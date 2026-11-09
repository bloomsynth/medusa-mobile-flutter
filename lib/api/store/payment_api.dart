import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class PaymentApi {
  PaymentApi(this._client);

  final MedusaClient _client;

  Future<List<StorePaymentProvider>> listProviders({
    required String regionId,
  }) async {
    final json = await _client.get(
      '/store/payment-providers',
      query: {'region_id': regionId},
    );
    return (json['payment_providers'] as List<dynamic>? ?? [])
        .map((e) => StorePaymentProvider.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Starts a payment session with the provider, creating the cart's payment
  /// collection first when it has none (what the JS SDK's
  /// `initiatePaymentSession` does).
  Future<StorePaymentCollection> initiatePaymentSession(
    StoreCart cart, {
    required String providerId,
  }) async {
    var collectionId = cart.paymentCollection?.id;
    if (collectionId == null) {
      final created = await _client.post(
        '/store/payment-collections',
        body: {'cart_id': cart.id},
      );
      collectionId =
          (created['payment_collection'] as Map<String, dynamic>)['id']
              as String;
    }
    final json = await _client.post(
      '/store/payment-collections/$collectionId/payment-sessions',
      body: {'provider_id': providerId},
    );
    return StorePaymentCollection.fromJson(
      json['payment_collection'] as Map<String, dynamic>,
    );
  }
}
