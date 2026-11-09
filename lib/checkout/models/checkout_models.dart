import 'package:medusa_mobile/api/models/models.dart';

enum CheckoutStep { address, delivery, payment, review }

/// What the app knows about a Medusa payment provider id.
class PaymentProviderDetails {
  const PaymentProviderDetails({
    required this.name,
    required this.hasExternalStep,
  });

  final String name;

  /// Whether paying needs a step outside Medusa (the Stripe Payment Sheet)
  /// before the cart can be completed.
  final bool hasExternalStep;
}

const manualProviderId = 'pp_system_default';
const stripeProviderId = 'pp_stripe_stripe';

/// Add an entry (and its payment step in `CheckoutCubit.completeOrder`) to
/// support another provider.
const paymentProviderDetails = <String, PaymentProviderDetails>{
  manualProviderId: PaymentProviderDetails(
    name: 'Manual',
    hasExternalStep: false,
  ),
  stripeProviderId: PaymentProviderDetails(
    name: 'Stripe',
    hasExternalStep: true,
  ),
};

String paymentProviderName(String providerId) =>
    paymentProviderDetails[providerId]?.name ?? providerId;

/// The step a returning customer resumes at, from what the cart already has.
CheckoutStep initialCheckoutStep(StoreCart? cart) {
  final hasAddress = cart?.shippingAddress?.address1?.isNotEmpty ?? false;
  final hasEmail = cart?.email?.isNotEmpty ?? false;
  if (cart == null || !hasAddress || !hasEmail) return CheckoutStep.address;
  if (!cart.hasShippingMethod) return CheckoutStep.delivery;
  // Review needs a started payment session to pay with.
  if (cart.activePaymentSession == null) return CheckoutStep.payment;
  return CheckoutStep.review;
}

/// The PaymentIntent client secret Medusa's Stripe provider stores in the
/// pending session's data.
String? stripeClientSecret(StorePaymentCollection? collection) {
  final session = collection?.paymentSessions
      .where((s) => s.providerId == stripeProviderId && s.status == 'pending')
      .firstOrNull;
  final secret = session?.data?['client_secret'];
  return secret is String ? secret : null;
}
