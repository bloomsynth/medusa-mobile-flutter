import 'package:flutter_test/flutter_test.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/checkout/cubit/checkout_cubit.dart';
import 'package:medusa_mobile/checkout/cubit/shipping_options_cubit.dart';
import 'package:medusa_mobile/checkout/models/checkout_models.dart';
import 'package:medusa_mobile/checkout/stripe/stripe_payment.dart';
import 'package:medusa_mobile/checkout/widgets/review_step.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/fake_medusa.dart';

class FakeStripe implements StripePaymentService {
  FakeStripe({this.isConfigured = true, this.result});

  @override
  final bool isConfigured;

  /// Null makes [pay] throw, like a declined card.
  StripePaymentResult? result;
  String? paidSecret;

  @override
  Future<StripePaymentResult> pay({
    required String clientSecret,
    required StoreCart cart,
  }) async {
    paidSecret = clientSecret;
    final answer = result;
    if (answer == null) throw Exception('Your card was declined.');
    return answer;
  }
}

const _address = {'first_name': 'Ada', 'address_1': 'Main St 1'};
const _shippingMethod = {
  'id': 'sm_1',
  'shipping_option_id': 'so_1',
  'name': 'Standard',
};

Map<String, dynamic> _paymentCollection(String providerId) => {
  'id': 'paycol_1',
  'payment_sessions': [
    {
      'id': 'ps_1',
      'provider_id': providerId,
      'status': 'pending',
      'data': {'client_secret': 'pi_secret'},
    },
  ],
};

void main() {
  late FakeMedusa server;
  late RegionCubit regionCubit;
  late CartCubit cartCubit;
  late CheckoutCubit Function({FakeStripe? stripe}) buildCheckout;
  late ShippingOptionsCubit Function() buildShipping;
  var started = false;

  /// Starts with [cart] as the customer's saved cart.
  Future<void> start(Map<String, dynamic> cart) async {
    started = true;
    SharedPreferences.setMockInitialValues({'cart_id': 'cart_1'});
    final prefs = await SharedPreferences.getInstance();
    final test = buildTestClient();
    server = test.server
      ..on(
        'GET',
        '/store/regions',
        (_) => {
          'regions': [regionJson()],
        },
      )
      ..on('GET', '/store/carts/cart_1', (_) => {'cart': cart})
      ..on('POST', '/store/carts', (_) => {'cart': cartJson(id: 'cart_2')});
    regionCubit = RegionCubit(test.client, prefs);
    cartCubit = CartCubit(test.client, prefs, regionCubit);
    await regionCubit.load();
    await cartCubit.stream.firstWhere((s) => s.cart != null);
    buildCheckout = ({stripe}) => CheckoutCubit(
      client: test.client,
      cartCubit: cartCubit,
      stripe: stripe ?? FakeStripe(),
    );
    buildShipping = () => ShippingOptionsCubit(test.client, cartCubit);
  }

  tearDown(() async {
    // The pure-function tests never start the cubits.
    if (!started) return;
    started = false;
    await cartCubit.close();
    await regionCubit.close();
  });

  group('initial step', () {
    test('address until the cart has an email and shipping address', () {
      expect(initialCheckoutStep(null), CheckoutStep.address);
      expect(
        initialCheckoutStep(StoreCart.fromJson(cartJson())),
        CheckoutStep.address,
      );
    });

    test('delivery, payment, then review as the cart fills in', () {
      StoreCart cart({
        List<Map<String, dynamic>> methods = const [],
        Map<String, dynamic>? payment,
      }) => StoreCart.fromJson(
        cartJson(
          email: 'ada@example.com',
          shippingAddress: _address,
          shippingMethods: methods,
          paymentCollection: payment,
        ),
      );

      expect(initialCheckoutStep(cart()), CheckoutStep.delivery);
      expect(
        initialCheckoutStep(cart(methods: [_shippingMethod])),
        CheckoutStep.payment,
      );
      expect(
        initialCheckoutStep(
          cart(
            methods: [_shippingMethod],
            payment: _paymentCollection(manualProviderId),
          ),
        ),
        CheckoutStep.review,
      );
    });
  });

  test('saving the address opens delivery', () async {
    await start(cartJson(items: [lineItemJson()]));
    server.on(
      'POST',
      '/store/carts/cart_1',
      (_) => {
        'cart': cartJson(email: 'ada@example.com', shippingAddress: _address),
      },
    );
    final checkout = buildCheckout();

    await checkout.submitAddress(
      email: 'ada@example.com',
      shippingAddress: _address,
      billingAddress: _address,
    );

    expect(checkout.state.activeStep, CheckoutStep.delivery);
    expect(checkout.state.isLoading, isFalse);
    expect(server.requestsTo('POST', '/store/carts/cart_1').single.data, {
      'email': 'ada@example.com',
      'shipping_address': _address,
      'billing_address': _address,
    });
  });

  group('delivery', () {
    test('cannot continue without a saved shipping method', () async {
      await start(
        cartJson(email: 'ada@example.com', shippingAddress: _address),
      );
      final checkout = buildCheckout();

      expect(
        checkout.submitDelivery,
        throwsA(
          isA<CheckoutException>().having(
            (e) => e.code,
            'code',
            CheckoutError.selectShippingMethod,
          ),
        ),
      );
      expect(checkout.state.activeStep, CheckoutStep.delivery);
    });

    test('cannot continue while a shipping update is in flight', () async {
      await start(
        cartJson(
          email: 'ada@example.com',
          shippingAddress: _address,
          shippingMethods: [_shippingMethod],
        ),
      );
      final checkout = buildCheckout()
        ..goToStep(CheckoutStep.delivery)
        ..setUpdatingShipping(updating: true);

      expect(checkout.submitDelivery, throwsA(isA<CheckoutException>()));

      checkout
        ..setUpdatingShipping(updating: false)
        ..submitDelivery();
      expect(checkout.state.activeStep, CheckoutStep.payment);
    });

    test('selecting an option saves it on the cart', () async {
      await start(
        cartJson(email: 'ada@example.com', shippingAddress: _address),
      );
      server
        ..on(
          'GET',
          '/store/shipping-options',
          (_) => {
            'shipping_options': [
              {'id': 'so_1', 'name': 'Standard', 'amount': 5},
              {'id': 'so_2', 'name': 'Express', 'price_type': 'calculated'},
            ],
          },
        )
        ..on(
          'POST',
          '/store/shipping-options/so_2/calculate',
          (_) => {
            'shipping_option': {'id': 'so_2', 'name': 'Express', 'amount': 12},
          },
        )
        ..on(
          'POST',
          '/store/carts/cart_1/shipping-methods',
          (_) => {
            'cart': cartJson(shippingMethods: [_shippingMethod]),
          },
        );
      final shipping = buildShipping();

      await shipping.load();
      expect(shipping.state.amountOf(shipping.state.options[0]), 5);
      expect(shipping.state.amountOf(shipping.state.options[1]), 12);

      await shipping.select('so_1');
      expect(shipping.state.selectedOptionId, 'so_1');
      expect(shipping.state.isUpdating, isFalse);
      expect(cartCubit.state.cart!.hasShippingMethod, isTrue);
    });

    test('a failed update reports the error and keeps the selection', () async {
      await start(
        cartJson(email: 'ada@example.com', shippingAddress: _address),
      );
      server.on(
        'POST',
        '/store/carts/cart_1/shipping-methods',
        (_) => const FakeError(500, 'boom'),
      );
      final shipping = buildShipping();

      await shipping.select('so_1');

      expect(shipping.state.updateFailed, isTrue);
      expect(shipping.state.selectedOptionId, isNull);
      expect(shipping.state.isUpdating, isFalse);
    });
  });

  group('payment', () {
    final readyCart = cartJson(
      items: [lineItemJson()],
      email: 'ada@example.com',
      shippingAddress: _address,
      shippingMethods: [_shippingMethod],
    );

    void onPaymentSession(String providerId) => server
      ..on(
        'POST',
        '/store/payment-collections',
        (_) => {
          'payment_collection': {'id': 'paycol_1'},
        },
      )
      ..on(
        'POST',
        '/store/payment-collections/paycol_1/payment-sessions',
        (_) => {'payment_collection': _paymentCollection(providerId)},
      );

    test('needs a selected provider', () async {
      await start(readyCart);
      final checkout = buildCheckout();

      await expectLater(
        checkout.submitPayment(),
        throwsA(
          isA<CheckoutException>().having(
            (e) => e.code,
            'code',
            CheckoutError.selectPaymentMethod,
          ),
        ),
      );
      expect(checkout.state.isLoading, isFalse);
    });

    test('Stripe is refused when no publishable key is configured', () async {
      await start(readyCart);
      final checkout = buildCheckout(stripe: FakeStripe(isConfigured: false))
        ..selectProvider(stripeProviderId);

      await expectLater(
        checkout.submitPayment(),
        throwsA(
          isA<CheckoutException>().having(
            (e) => e.code,
            'code',
            CheckoutError.stripeNotConfigured,
          ),
        ),
      );
    });

    test('manual payment completes the order and starts a new cart', () async {
      await start(readyCart);
      onPaymentSession(manualProviderId);
      server.on(
        'POST',
        '/store/carts/cart_1/complete',
        (_) => {
          'type': 'order',
          'order': {'id': 'order_1', 'currency_code': 'eur'},
        },
      );
      final stripe = FakeStripe();
      final checkout = buildCheckout(stripe: stripe)
        ..selectProvider(manualProviderId);

      await checkout.submitPayment();
      expect(checkout.state.activeStep, CheckoutStep.review);

      expect(await checkout.completeOrder(), 'order_1');
      expect(stripe.paidSecret, isNull);
      expect(cartCubit.state.cart?.id, 'cart_2');
    });

    test('Stripe pays with the session secret before completing', () async {
      await start(readyCart);
      onPaymentSession(stripeProviderId);
      server.on(
        'POST',
        '/store/carts/cart_1/complete',
        (_) => {
          'type': 'order',
          'order': {'id': 'order_1', 'currency_code': 'eur'},
        },
      );
      final stripe = FakeStripe(result: StripePaymentResult.paid);
      final checkout = buildCheckout(stripe: stripe)
        ..selectProvider(stripeProviderId);

      await checkout.submitPayment();
      expect(checkout.state.stripeClientSecret, 'pi_secret');

      expect(await checkout.completeOrder(), 'order_1');
      expect(stripe.paidSecret, 'pi_secret');
    });

    test('closing the Stripe sheet stays on review with the cart', () async {
      await start(readyCart);
      onPaymentSession(stripeProviderId);
      final checkout = buildCheckout(
        stripe: FakeStripe(result: StripePaymentResult.canceled),
      )..selectProvider(stripeProviderId);
      await checkout.submitPayment();

      expect(await checkout.completeOrder(), isNull);

      expect(checkout.state.activeStep, CheckoutStep.review);
      expect(cartCubit.state.cart?.id, 'cart_1');
      expect(
        server.requestsTo('POST', '/store/carts/cart_1/complete'),
        isEmpty,
      );
    });

    test('a declined card does not complete the cart', () async {
      await start(readyCart);
      onPaymentSession(stripeProviderId);
      final checkout = buildCheckout(stripe: FakeStripe())
        ..selectProvider(stripeProviderId);
      await checkout.submitPayment();

      await expectLater(checkout.completeOrder(), throwsException);
      expect(
        server.requestsTo('POST', '/store/carts/cart_1/complete'),
        isEmpty,
      );
      expect(checkout.state.isLoading, isFalse);
    });

    test('a cart the server cannot complete reports its reason', () async {
      await start(readyCart);
      onPaymentSession(manualProviderId);
      server.on(
        'POST',
        '/store/carts/cart_1/complete',
        (_) => {
          'type': 'cart',
          'cart': readyCart,
          'error': {'message': 'Out of stock'},
        },
      );
      final checkout = buildCheckout()..selectProvider(manualProviderId);
      await checkout.submitPayment();

      await expectLater(
        checkout.completeOrder(),
        throwsA(
          isA<CheckoutException>()
              .having((e) => e.code, 'code', CheckoutError.completeFailed)
              .having((e) => e.message, 'message', 'Out of stock'),
        ),
      );
      expect(cartCubit.state.cart?.id, 'cart_1');
    });
  });

  group('review summary', () {
    test('prefers the provider selected on screen', () {
      final cart = StoreCart.fromJson(
        cartJson(paymentCollection: _paymentCollection(manualProviderId)),
      );
      expect(reviewPaymentProviderId(cart, stripeProviderId), stripeProviderId);
    });

    test('falls back to an authorized cart session', () {
      final cart = StoreCart.fromJson(
        cartJson(
          paymentCollection: {
            'id': 'paycol_1',
            'payment_sessions': [
              {
                'id': 'ps_1',
                'provider_id': manualProviderId,
                'status': 'authorized',
              },
            ],
          },
        ),
      );
      expect(reviewPaymentProviderId(cart, null), manualProviderId);
      expect(
        reviewPaymentProviderId(StoreCart.fromJson(cartJson()), null),
        isNull,
      );
    });
  });

  test('billing details come from the billing or shipping address', () {
    final cart = StoreCart.fromJson(
      cartJson(
        email: 'ada@example.com',
        shippingAddress: {
          'first_name': 'Ada',
          'last_name': 'Lovelace',
          'address_1': 'Main St 1',
          'city': 'Berlin',
          'postal_code': '10115',
          'country_code': 'de',
          'phone': '',
        },
      ),
    );

    final details = billingDetailsFor(cart);

    expect(details.email, 'ada@example.com');
    expect(details.name, 'Ada Lovelace');
    expect(details.phone, isNull);
    expect(details.address?.country, 'DE');
    expect(details.address?.line1, 'Main St 1');
  });
}
