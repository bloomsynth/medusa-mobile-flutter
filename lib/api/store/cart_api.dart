import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

/// Result of `POST /store/carts/:id/complete`: an order, or the cart back with
/// the reason it could not be completed.
sealed class CartCompleteResult {
  const CartCompleteResult();
}

class CartCompletedOrder extends CartCompleteResult {
  const CartCompletedOrder(this.order);
  final StoreOrder order;
}

class CartCompleteFailed extends CartCompleteResult {
  const CartCompleteFailed(this.cart, this.message);
  final StoreCart cart;
  final String? message;
}

class CartApi {
  CartApi(this._client);

  final MedusaClient _client;

  /// Adds the shipping method names the cart screens show.
  static const additionalFields = '+shipping_methods.name';

  StoreCart _cart(Map<String, dynamic> json) =>
      StoreCart.fromJson(json['cart'] as Map<String, dynamic>);

  Future<StoreCart> create({required String regionId}) async {
    final json = await _client.post(
      '/store/carts',
      body: {'region_id': regionId},
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  Future<StoreCart> retrieve(String id) async {
    final json = await _client.get(
      '/store/carts/$id',
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  Future<StoreCart> update(String id, Map<String, dynamic> data) async {
    final json = await _client.post(
      '/store/carts/$id',
      body: data,
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  Future<StoreCart> createLineItem(
    String cartId, {
    required String variantId,
    required int quantity,
  }) async {
    final json = await _client.post(
      '/store/carts/$cartId/line-items',
      body: {'variant_id': variantId, 'quantity': quantity},
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  Future<StoreCart> updateLineItem(
    String cartId,
    String lineItemId, {
    required int quantity,
  }) async {
    final json = await _client.post(
      '/store/carts/$cartId/line-items/$lineItemId',
      body: {'quantity': quantity},
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  /// Answers `{ deleted, parent: cart }`; callers refetch the cart.
  Future<void> deleteLineItem(String cartId, String lineItemId) =>
      _client.delete('/store/carts/$cartId/line-items/$lineItemId');

  /// Moves a guest cart to the signed-in customer.
  Future<StoreCart> transfer(String cartId) async {
    final json = await _client.post(
      '/store/carts/$cartId/customer',
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  Future<StoreCart> addShippingMethod(
    String cartId, {
    required String optionId,
  }) async {
    final json = await _client.post(
      '/store/carts/$cartId/shipping-methods',
      body: {'option_id': optionId},
      query: {'fields': additionalFields},
    );
    return _cart(json);
  }

  Future<CartCompleteResult> complete(String cartId) async {
    final json = await _client.post('/store/carts/$cartId/complete');
    if (json['type'] == 'order') {
      return CartCompletedOrder(
        StoreOrder.fromJson(json['order'] as Map<String, dynamic>),
      );
    }
    final error = json['error'];
    return CartCompleteFailed(
      _cart(json),
      error is Map<String, dynamic> ? error['message'] as String? : null,
    );
  }
}
