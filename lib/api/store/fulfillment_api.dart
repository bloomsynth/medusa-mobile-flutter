import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class FulfillmentApi {
  FulfillmentApi(this._client);

  final MedusaClient _client;

  Future<List<StoreShippingOption>> listCartOptions(String cartId) async {
    final json = await _client.get(
      '/store/shipping-options',
      query: {'cart_id': cartId},
    );
    return (json['shipping_options'] as List<dynamic>? ?? [])
        .map((e) => StoreShippingOption.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Prices a `calculated` shipping option for the cart.
  Future<StoreShippingOption> calculate(
    String optionId, {
    required String cartId,
  }) async {
    final json = await _client.post(
      '/store/shipping-options/$optionId/calculate',
      body: {'cart_id': cartId},
    );
    return StoreShippingOption.fromJson(
      json['shipping_option'] as Map<String, dynamic>,
    );
  }
}
