import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/medusa_exception.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/checkout/cubit/checkout_cubit.dart';
import 'package:medusa_mobile/checkout/models/checkout_models.dart';
import 'package:medusa_mobile/checkout/widgets/address_fields.dart';
import 'package:medusa_mobile/checkout/widgets/checkout_steps.dart';
import 'package:medusa_mobile/checkout/widgets/payment_step.dart';
import 'package:medusa_mobile/checkout/widgets/review_step.dart';
import 'package:medusa_mobile/checkout/widgets/shipping_step.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/utils/validators.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutCubit(
        client: context.read<MedusaClient>(),
        cartCubit: context.read<CartCubit>(),
      ),
      child: const _CheckoutView(),
    );
  }
}

class _CheckoutView extends StatefulWidget {
  const _CheckoutView();

  @override
  State<_CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<_CheckoutView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _email;
  late final AddressFormControllers _shipping;
  late final AddressFormControllers _billing;
  late bool _useSameBilling;

  @override
  void initState() {
    super.initState();
    final cart = context.read<CartCubit>().state.cart;
    final shipping = cart?.shippingAddress;
    final billing = cart?.billingAddress;
    _email = TextEditingController(text: cart?.email ?? '');
    _shipping = AddressFormControllers(shipping);
    _billing = AddressFormControllers(billing);
    _useSameBilling =
        shipping == null ||
        billing == null ||
        const MapEquality<String, String>().equals(
          shipping.comparableFields,
          billing.comparableFields,
        );
  }

  @override
  void dispose() {
    _email.dispose();
    _shipping.dispose();
    _billing.dispose();
    super.dispose();
  }

  String _errorMessage(AppLocalizations l10n, Object error) {
    if (error is CheckoutException) {
      return switch (error.code) {
        CheckoutError.selectShippingMethod => l10n.selectShippingMethod,
        CheckoutError.selectPaymentMethod => l10n.pleaseSelectAPaymentMethod,
        CheckoutError.noCart => l10n.noCartFound,
        CheckoutError.stripeNotConfigured => l10n.stripeNotConfigured,
        CheckoutError.paymentNotReady => l10n.paymentNotReady,
        CheckoutError.providerNotSupported => l10n.paymentProviderNotSupported,
        CheckoutError.completeFailed =>
          error.message ?? l10n.failedToCompleteOrder,
      };
    }
    if (error is MedusaException) return error.message;
    if (error is Exception) {
      return error.toString().replaceFirst('Exception: ', '');
    }
    return l10n.anErrorOccurred;
  }

  Future<void> _continue() async {
    final cubit = context.read<CheckoutCubit>();
    final l10n = context.l10n;
    final router = GoRouter.of(context);
    try {
      switch (cubit.state.activeStep) {
        case CheckoutStep.address:
          if (!(_formKey.currentState?.validate() ?? false)) return;
          final shipping = _shipping.toJson();
          await cubit.submitAddress(
            email: _email.text.trim(),
            shippingAddress: shipping,
            billingAddress: _useSameBilling ? shipping : _billing.toJson(),
          );
        case CheckoutStep.delivery:
          cubit.submitDelivery();
        case CheckoutStep.payment:
          await cubit.submitPayment();
        case CheckoutStep.review:
          final orderId = await cubit.completeOrder();
          if (orderId == null) return;
          // Leave Home under the order, so Back does not return to checkout.
          router.go(AppRoutes.home);
          await router.push(AppRoutes.order(orderId));
      }
    } on Object catch (error, stackTrace) {
      log('Checkout step failed: $error', stackTrace: stackTrace);
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(l10n.error),
          content: Text(_errorMessage(l10n, error)),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  String _ctaText(AppLocalizations l10n, CheckoutState state) =>
      switch (state.activeStep) {
        CheckoutStep.address => l10n.continueToDelivery,
        CheckoutStep.delivery => l10n.continueToPayment,
        CheckoutStep.payment => l10n.reviewOrder,
        CheckoutStep.review =>
          (paymentProviderDetails[state.selectedProviderId]?.hasExternalStep ??
                  false)
              ? l10n.payUsingProvider(
                  paymentProviderName(state.selectedProviderId!),
                )
              : l10n.placeOrder,
      };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final cart = context.watch<CartCubit>().state.cart;
    final state = context.watch<CheckoutCubit>().state;
    final cubit = context.read<CheckoutCubit>();
    final countries = context.watch<RegionCubit>().state.countries;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: l10n.checkout),
            const SizedBox(height: 16),
            if (cart == null || cart.isEmpty)
              const Expanded(child: Loader())
            else ...[
              CheckoutSteps(
                currentStep: state.activeStep,
                onStepPressed: cubit.goToStep,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: switch (state.activeStep) {
                    CheckoutStep.address => _addressStep(
                      l10n,
                      countries,
                      enabled: !state.isLoading,
                    ),
                    CheckoutStep.delivery => ShippingStep(
                      currencyCode: cart.currencyCode,
                    ),
                    CheckoutStep.payment =>
                      cart.regionId == null
                          ? ErrorView(message: l10n.noRegionId)
                          : PaymentStep(regionId: cart.regionId!),
                    CheckoutStep.review => ReviewStep(
                      cart: cart,
                      selectedProviderId: state.selectedProviderId,
                    ),
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colors.backgroundSecondary,
                  border: Border(top: BorderSide(color: colors.borderLight)),
                ),
                child: AppButton(
                  title: _ctaText(l10n, state),
                  onPressed: _continue,
                  loading: state.isLoading,
                  disabled:
                      state.activeStep == CheckoutStep.delivery &&
                      (state.isUpdatingShipping || !cart.hasShippingMethod),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _addressStep(
    AppLocalizations l10n,
    List<StoreRegionCountry> countries, {
    required bool enabled,
  }) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppInput(
            controller: _email,
            label: l10n.email,
            enabled: enabled,
            keyboardType: TextInputType.emailAddress,
            validator: (v) => Validators.checkoutEmail(l10n, v),
          ),
          const SizedBox(height: 24),
          AddressFields(
            title: l10n.shippingAddress,
            controllers: _shipping,
            countries: countries,
            enabled: enabled,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Switch(
                value: _useSameBilling,
                onChanged: enabled
                    ? (value) => setState(() => _useSameBilling = value)
                    : null,
              ),
              const SizedBox(width: 8),
              Expanded(child: Text(l10n.useSameAddressForBilling)),
            ],
          ),
          if (!_useSameBilling) ...[
            const SizedBox(height: 16),
            AddressFields(
              title: l10n.billingAddress,
              controllers: _billing,
              countries: countries,
              enabled: enabled,
            ),
          ],
        ],
      ),
    );
  }
}
