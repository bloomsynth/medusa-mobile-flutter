import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/config/env.dart';

enum StripePaymentResult { paid, canceled }

/// Collects and confirms a card payment. Behind an interface so the checkout
/// can be tested without the native SDK.
abstract class StripePaymentService {
  /// False until `STRIPE_PUBLISHABLE_KEY` is set.
  bool get isConfigured;

  /// Opens the Payment Sheet, which collects the card and confirms the
  /// PaymentIntent (including 3D Secure). Answers `canceled` when the
  /// customer closes the sheet and throws on any other failure.
  Future<StripePaymentResult> pay({
    required String clientSecret,
    required StoreCart cart,
  });
}

class StripeSheetPaymentService implements StripePaymentService {
  const StripeSheetPaymentService();

  @override
  bool get isConfigured => Env.stripePublishableKey.isNotEmpty;

  @override
  Future<StripePaymentResult> pay({
    required String clientSecret,
    required StoreCart cart,
  }) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: Env.merchantDisplayName,
          billingDetails: billingDetailsFor(cart),
        ),
      );
      await Stripe.instance.presentPaymentSheet();
      return StripePaymentResult.paid;
    } on StripeException catch (error) {
      if (error.error.code == FailureCode.Canceled) {
        return StripePaymentResult.canceled;
      }
      throw Exception(
        error.error.localizedMessage ?? error.error.message ?? 'Payment failed',
      );
    }
  }
}

/// Prefills the sheet from the cart's billing (or shipping) address.
BillingDetails billingDetailsFor(StoreCart cart) {
  final address = cart.billingAddress ?? cart.shippingAddress;
  String? filled(String? value) =>
      (value == null || value.isEmpty) ? null : value;

  return BillingDetails(
    email: filled(cart.email),
    phone: filled(address?.phone),
    name: filled(address?.fullName),
    address: address == null
        ? null
        : Address(
            line1: filled(address.address1),
            line2: filled(address.address2),
            city: filled(address.city),
            state: filled(address.province),
            postalCode: filled(address.postalCode),
            country: filled(address.countryCode?.toUpperCase()),
          ),
  );
}
