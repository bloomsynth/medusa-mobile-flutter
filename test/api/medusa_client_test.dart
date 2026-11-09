import 'package:flutter_test/flutter_test.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/medusa_exception.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/cart_api.dart';
import 'package:medusa_mobile/api/store/product_api.dart';

import '../helpers/fake_medusa.dart';

void main() {
  test('sends the publishable key and leaves out null query values', () async {
    final (:client, :server) = buildTestClient();
    server.on('GET', '/store/products', (_) => {'products': <dynamic>[]});

    await client.product.list(
      const ProductListParams(regionId: 'reg_eu', categoryIds: ['cat_1']),
    );

    final request = server.requests.single;
    expect(request.headers['x-publishable-api-key'], 'pk_test');
    expect(request.headers.containsKey('Authorization'), isFalse);
    expect(request.queryParameters, {
      'region_id': 'reg_eu',
      'category_id': ['cat_1'],
    });
  });

  test('login stores the token and sends it afterwards', () async {
    final (:client, :server) = buildTestClient();
    server
      ..on('POST', '/auth/customer/emailpass', (_) => {'token': 'jwt_1'})
      ..on(
        'GET',
        '/store/customers/me',
        (_) => {
          'customer': {'id': 'cus_1', 'first_name': 'Ada', 'last_name': 'L'},
        },
      );

    await client.auth.login(email: 'ada@example.com', password: 'secret');
    final customer = await client.customer.retrieve();

    expect(customer.fullName, 'Ada L');
    expect(server.requests.last.headers['Authorization'], 'Bearer jwt_1');

    await client.auth.logout();
    expect(await client.getToken(), isNull);
  });

  test('turns an error answer into a MedusaException', () async {
    final (:client, :server) = buildTestClient();
    server.on(
      'GET',
      '/store/customers/me',
      (_) => const FakeError(401, 'Unauthorized'),
    );

    await expectLater(
      client.customer.retrieve(),
      throwsA(
        isA<MedusaException>()
            .having((e) => e.isUnauthorized, 'isUnauthorized', isTrue)
            .having((e) => e.message, 'message', 'Unauthorized'),
      ),
    );
  });

  test('parses products with region prices and stock fields', () async {
    final (:client, :server) = buildTestClient();
    server.on(
      'GET',
      '/store/products/prod_1',
      (_) => {
        'product': {
          'id': 'prod_1',
          'title': 'Shirt',
          'collection_id': 'col_1',
          'options': [
            {
              'id': 'opt_size',
              'title': 'Size',
              'values': [
                {'id': 'v1', 'value': 'S'},
              ],
            },
          ],
          'variants': [
            {
              'id': 'variant_1',
              'manage_inventory': true,
              'allow_backorder': false,
              'inventory_quantity': 0,
              'options': [
                {'id': 'v1', 'value': 'S', 'option_id': 'opt_size'},
              ],
              'calculated_price': {
                'calculated_amount': 8,
                'original_amount': 10,
                'currency_code': 'eur',
                'calculated_price': {'price_list_type': 'sale'},
              },
            },
          ],
        },
      },
    );

    final product = await client.product.retrieve('prod_1');
    final variant = product.variants.single;

    expect(product.collectionId, 'col_1');
    expect(variant.optionsMap, {'opt_size': 'S'});
    expect(variant.inStock, isFalse);
    expect(variant.calculatedPrice?.calculatedPrice?.priceListType, 'sale');
  });

  test('completing a cart answers the order or the failure reason', () async {
    final (:client, :server) = buildTestClient();
    server
      ..on(
        'POST',
        '/store/carts/cart_1/complete',
        (_) => {
          'type': 'order',
          'order': {'id': 'order_1', 'currency_code': 'eur'},
        },
      )
      ..on(
        'POST',
        '/store/carts/cart_2/complete',
        (_) => {
          'type': 'cart',
          'cart': cartJson(id: 'cart_2'),
          'error': {'message': 'Payment not authorized'},
        },
      );

    expect(
      await client.cart.complete('cart_1'),
      isA<CartCompletedOrder>().having((r) => r.order.id, 'id', 'order_1'),
    );
    expect(
      await client.cart.complete('cart_2'),
      isA<CartCompleteFailed>().having(
        (r) => r.message,
        'message',
        'Payment not authorized',
      ),
    );
  });

  test(
    'starting a payment session creates the collection when missing',
    () async {
      final (:client, :server) = buildTestClient();
      server
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
          (_) => {
            'payment_collection': {
              'id': 'paycol_1',
              'payment_sessions': [
                {
                  'id': 'ps_1',
                  'provider_id': 'pp_stripe_stripe',
                  'status': 'pending',
                  'data': {'client_secret': 'pi_secret'},
                },
              ],
            },
          },
        );

      final cart = await _cart(client, server);
      final collection = await client.payment.initiatePaymentSession(
        cart,
        providerId: 'pp_stripe_stripe',
      );

      expect(
        collection.paymentSessions.single.data?['client_secret'],
        'pi_secret',
      );
      expect(
        server.requestsTo('POST', '/store/payment-collections').single.data,
        {'cart_id': 'cart_1'},
      );
    },
  );
}

Future<StoreCart> _cart(MedusaClient client, FakeMedusa server) {
  server.on('GET', '/store/carts/cart_1', (_) => {'cart': cartJson()});
  return client.cart.retrieve('cart_1');
}
