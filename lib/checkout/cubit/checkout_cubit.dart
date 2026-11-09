import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/store/cart_api.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/checkout/models/checkout_models.dart';
import 'package:medusa_mobile/checkout/stripe/stripe_payment.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';

/// Why a checkout step could not continue; the screen localizes these.
enum CheckoutError {
  selectShippingMethod,
  selectPaymentMethod,
  noCart,
  stripeNotConfigured,
  paymentNotReady,
  providerNotSupported,
  completeFailed,
}

class CheckoutException implements Exception {
  const CheckoutException(this.code, [this.message]);

  final CheckoutError code;

  /// The server's own message, when it gave one.
  final String? message;
}

class CheckoutState extends Equatable {
  const CheckoutState({
    required this.activeStep,
    this.isLoading = false,
    this.isUpdatingShipping = false,
    this.selectedProviderId,
    this.stripeClientSecret,
  });

  final CheckoutStep activeStep;

  /// The Continue button's request is in flight.
  final bool isLoading;

  /// A shipping method is being saved; Continue stays off until it lands.
  final bool isUpdatingShipping;
  final String? selectedProviderId;
  final String? stripeClientSecret;

  CheckoutState copyWith({
    CheckoutStep? activeStep,
    bool? isLoading,
    bool? isUpdatingShipping,
    String? selectedProviderId,
    String? stripeClientSecret,
  }) => CheckoutState(
    activeStep: activeStep ?? this.activeStep,
    isLoading: isLoading ?? this.isLoading,
    isUpdatingShipping: isUpdatingShipping ?? this.isUpdatingShipping,
    selectedProviderId: selectedProviderId ?? this.selectedProviderId,
    stripeClientSecret: stripeClientSecret ?? this.stripeClientSecret,
  );

  @override
  List<Object?> get props => [
    activeStep,
    isLoading,
    isUpdatingShipping,
    selectedProviderId,
    stripeClientSecret,
  ];
}

/// Drives the four checkout steps. The cart itself stays in [CartCubit]; this
/// cubit owns the active step, the chosen payment provider and the Stripe
/// client secret of the session it starts.
class CheckoutCubit extends SafeCubit<CheckoutState> {
  CheckoutCubit({
    required this._client,
    required CartCubit cartCubit,
    this._stripe = const StripeSheetPaymentService(),
  }) : _cartCubit = cartCubit,
       super(
         CheckoutState(
           activeStep: initialCheckoutStep(cartCubit.state.cart),
           selectedProviderId:
               cartCubit.state.cart?.activePaymentSession?.providerId,
           stripeClientSecret: stripeClientSecret(
             cartCubit.state.cart?.paymentCollection,
           ),
         ),
       );

  final MedusaClient _client;
  final CartCubit _cartCubit;
  final StripePaymentService _stripe;

  bool get stripeConfigured => _stripe.isConfigured;

  /// Jumps back to an earlier step; later steps are reached with Continue.
  void goToStep(CheckoutStep step) {
    if (step.index < state.activeStep.index) {
      emit(state.copyWith(activeStep: step));
    }
  }

  void selectProvider(String providerId) =>
      emit(state.copyWith(selectedProviderId: providerId));

  void setUpdatingShipping({required bool updating}) =>
      emit(state.copyWith(isUpdatingShipping: updating));

  Future<T> _run<T>(Future<T> Function() action) async {
    emit(state.copyWith(isLoading: true));
    try {
      return await action();
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  /// Saves the contact email and addresses, then opens delivery.
  Future<void> submitAddress({
    required String email,
    required Map<String, dynamic> shippingAddress,
    required Map<String, dynamic> billingAddress,
  }) => _run(() async {
    await _cartCubit.updateCart({
      'email': email,
      'shipping_address': shippingAddress,
      'billing_address': billingAddress,
    });
    emit(state.copyWith(activeStep: CheckoutStep.delivery));
  });

  /// Opens payment once a shipping method is saved on the cart.
  void submitDelivery() {
    final cart = _cartCubit.state.cart;
    if (state.isUpdatingShipping || cart == null || !cart.hasShippingMethod) {
      throw const CheckoutException(CheckoutError.selectShippingMethod);
    }
    emit(state.copyWith(activeStep: CheckoutStep.payment));
  }

  /// Starts a payment session with the chosen provider, then opens review.
  Future<void> submitPayment() => _run(() async {
    final providerId = state.selectedProviderId;
    if (providerId == null) {
      throw const CheckoutException(CheckoutError.selectPaymentMethod);
    }
    final cart = _cartCubit.state.cart;
    if (cart == null) throw const CheckoutException(CheckoutError.noCart);
    if (providerId == stripeProviderId && !_stripe.isConfigured) {
      throw const CheckoutException(CheckoutError.stripeNotConfigured);
    }

    final collection = await _client.payment.initiatePaymentSession(
      cart,
      providerId: providerId,
    );
    // Starting a session does not answer the cart; keep the secret here
    // and refresh the cart so it knows its payment collection.
    final secret = stripeClientSecret(collection);
    await _cartCubit.refresh();
    emit(
      CheckoutState(
        activeStep: CheckoutStep.review,
        isLoading: true,
        selectedProviderId: providerId,
        stripeClientSecret: secret,
      ),
    );
  });

  /// Pays (for providers with an external step) and completes the cart.
  /// Answers the order id, or null when the customer closed the Stripe sheet.
  Future<String?> completeOrder() => _run(() async {
    final cart = _cartCubit.state.cart;
    if (cart == null) throw const CheckoutException(CheckoutError.noCart);

    final providerId = state.selectedProviderId;
    final details = paymentProviderDetails[providerId];
    if (details?.hasExternalStep ?? false) {
      if (providerId != stripeProviderId) {
        throw const CheckoutException(CheckoutError.providerNotSupported);
      }
      if (!_stripe.isConfigured) {
        throw const CheckoutException(CheckoutError.stripeNotConfigured);
      }
      final secret = state.stripeClientSecret;
      if (secret == null) {
        throw const CheckoutException(CheckoutError.paymentNotReady);
      }
      final result = await _stripe.pay(clientSecret: secret, cart: cart);
      if (result == StripePaymentResult.canceled) return null;
    }

    final result = await _client.cart.complete(cart.id);
    switch (result) {
      case CartCompleteFailed(:final message):
        throw CheckoutException(CheckoutError.completeFailed, message);
      case CartCompletedOrder(:final order):
        await _cartCubit.resetCart();
        await _cartCubit.createForCurrentRegion();
        return order.id;
    }
  });
}
