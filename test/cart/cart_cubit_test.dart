import 'package:flutter_test/flutter_test.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/fake_medusa.dart';

void main() {
  late FakeMedusa server;
  late RegionCubit regionCubit;
  late CartCubit cartCubit;
  late SharedPreferences prefs;

  Future<void> start({Map<String, Object> saved = const {}}) async {
    SharedPreferences.setMockInitialValues(saved);
    prefs = await SharedPreferences.getInstance();
    final test = buildTestClient();
    server = test.server
      ..on(
        'GET',
        '/store/regions',
        (_) => {
          'regions': [regionJson(), regionJson(id: 'reg_us', currency: 'usd')],
        },
      )
      ..on('POST', '/store/carts', (_) => {'cart': cartJson()});
    regionCubit = RegionCubit(test.client, prefs);
    cartCubit = CartCubit(test.client, prefs, regionCubit);
  }

  Future<StoreCart> loadCart() async {
    await regionCubit.load();
    final state = cartCubit.state.cart != null
        ? cartCubit.state
        : await cartCubit.stream.firstWhere((s) => s.cart != null);
    return state.cart!;
  }

  tearDown(() async {
    await cartCubit.close();
    await regionCubit.close();
  });

  test('creates a cart for the first region and remembers its id', () async {
    await start();

    final cart = await loadCart();

    expect(cart.id, 'cart_1');
    expect(server.requestsTo('POST', '/store/carts').single.data, {
      'region_id': 'reg_eu',
    });
    expect(prefs.getString('cart_id'), 'cart_1');
    expect(prefs.getString('region_id'), 'reg_eu');
  });

  test('restores the saved cart instead of creating one', () async {
    await start(saved: {'cart_id': 'cart_9', 'region_id': 'reg_eu'});
    server.on(
      'GET',
      '/store/carts/cart_9',
      (_) => {
        'cart': cartJson(id: 'cart_9', items: [lineItemJson(quantity: 2)]),
      },
    );

    final cart = await loadCart();

    expect(cart.id, 'cart_9');
    expect(cart.itemCount, 2);
    expect(server.requestsTo('POST', '/store/carts'), isEmpty);
  });

  test('creates a new cart when the saved one is gone', () async {
    await start(saved: {'cart_id': 'cart_gone'});

    final cart = await loadCart();

    expect(cart.id, 'cart_1');
    expect(prefs.getString('cart_id'), 'cart_1');
  });

  test('moves the cart when the region changes', () async {
    await start();
    await loadCart();
    server.on(
      'POST',
      '/store/carts/cart_1',
      (_) => {'cart': cartJson(regionId: 'reg_us')},
    );

    await regionCubit.select(regionCubit.state.regions.last);
    await cartCubit.stream.firstWhere((s) => s.cart?.regionId == 'reg_us');

    expect(server.requestsTo('POST', '/store/carts/cart_1').single.data, {
      'region_id': 'reg_us',
    });
  });

  test('adding to the cart stores the cart the server answers', () async {
    await start();
    await loadCart();
    server.on(
      'POST',
      '/store/carts/cart_1/line-items',
      (_) => {
        'cart': cartJson(items: [lineItemJson(quantity: 3)]),
      },
    );

    await cartCubit.addToCart('variant_1', 3);

    final cart = cartCubit.state.cart!;
    expect(cart.itemCount, 3);
    expect(cart.quantityOfProduct('prod_1'), 3);
    expect(cart.quantityOfVariant('other'), 0);
  });

  test('a quantity of zero deletes the line and refetches the cart', () async {
    await start();
    await loadCart();
    server
      ..on(
        'DELETE',
        '/store/carts/cart_1/line-items/item_1',
        (_) => {'deleted': true},
      )
      ..on('GET', '/store/carts/cart_1', (_) => {'cart': cartJson()});

    await cartCubit.updateLineItem('item_1', 0);

    expect(
      server.requestsTo('DELETE', '/store/carts/cart_1/line-items/item_1'),
      hasLength(1),
    );
    expect(cartCubit.state.isEmpty, isTrue);
  });

  test(
    'a promo code counts as applied only when the server keeps it',
    () async {
      await start();
      await loadCart();
      var promotions = <Map<String, dynamic>>[];
      server.on(
        'POST',
        '/store/carts/cart_1',
        (_) => {'cart': cartJson(promotions: promotions)},
      );

      expect(await cartCubit.applyPromoCode('NOPE'), isFalse);

      promotions = [
        {'id': 'promo_1', 'code': 'SAVE10', 'is_automatic': false},
      ];
      expect(await cartCubit.applyPromoCode('SAVE10'), isTrue);

      // Existing manual codes are sent along with the new one.
      await cartCubit.applyPromoCode('EXTRA');
      expect(server.requestsTo('POST', '/store/carts/cart_1').last.data, {
        'promo_codes': ['SAVE10', 'EXTRA'],
      });

      await cartCubit.removePromoCode('SAVE10');
      expect(server.requestsTo('POST', '/store/carts/cart_1').last.data, {
        'promo_codes': <String>[],
      });
    },
  );
}
