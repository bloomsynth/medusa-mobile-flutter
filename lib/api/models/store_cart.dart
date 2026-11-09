import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medusa_mobile/api/models/store_address.dart';

part 'store_cart.freezed.dart';
part 'store_cart.g.dart';

/// The customer's cart. Every cart mutation answers the full cart, which the
/// `CartCubit` stores so totals and checkout steps stay in sync.
@freezed
abstract class StoreCart with _$StoreCart {
  const factory StoreCart({
    required String id,
    required String currencyCode,
    String? regionId,
    String? customerId,
    String? email,
    @Default([]) List<StoreCartLineItem> items,
    StoreAddress? shippingAddress,
    StoreAddress? billingAddress,
    @Default([]) List<StoreCartShippingMethod> shippingMethods,
    @Default([]) List<StorePromotion> promotions,
    StorePaymentCollection? paymentCollection,
    @Default(0) num total,
    @Default(0) num subtotal,
    @Default(0) num itemSubtotal,
    @Default(0) num shippingTotal,
    @Default(0) num taxTotal,
    @Default(0) num discountTotal,
  }) = _StoreCart;

  const StoreCart._();

  factory StoreCart.fromJson(Map<String, dynamic> json) =>
      _$StoreCartFromJson(json);

  bool get isEmpty => items.isEmpty;

  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);

  int quantityOfProduct(String productId) => items
      .where((item) => item.productId == productId)
      .fold(0, (sum, item) => sum + item.quantity);

  int quantityOfVariant(String variantId) => items
      .where((item) => item.variantId == variantId)
      .fold(0, (sum, item) => sum + item.quantity);

  /// Items oldest first, the order the customer added them.
  List<StoreCartLineItem> get sortedItems {
    return [...items]..sort((a, b) {
      final aTime = a.createdAt;
      final bTime = b.createdAt;
      if (aTime == null || bTime == null) return 0;
      return aTime.compareTo(bTime);
    });
  }

  bool get hasShippingMethod =>
      shippingMethods.any((method) => method.shippingOptionId != null);

  /// The payment session the customer is about to pay with.
  StorePaymentSession? get activePaymentSession => paymentCollection
      ?.paymentSessions
      .where((session) => session.status == 'pending')
      .firstOrNull;
}

@freezed
abstract class StoreCartLineItem with _$StoreCartLineItem {
  const factory StoreCartLineItem({
    required String id,
    required int quantity,
    @Default(0) num unitPrice,
    String? title,
    String? productTitle,
    String? variantTitle,
    String? thumbnail,
    String? productId,
    String? variantId,
    num? total,
    num? originalTotal,
    DateTime? createdAt,
  }) = _StoreCartLineItem;

  factory StoreCartLineItem.fromJson(Map<String, dynamic> json) =>
      _$StoreCartLineItemFromJson(json);
}

@freezed
abstract class StoreCartShippingMethod with _$StoreCartShippingMethod {
  const factory StoreCartShippingMethod({
    required String id,
    String? shippingOptionId,
    String? name,
    num? amount,
  }) = _StoreCartShippingMethod;

  factory StoreCartShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$StoreCartShippingMethodFromJson(json);
}

@freezed
abstract class StorePromotion with _$StorePromotion {
  const factory StorePromotion({
    required String id,
    String? code,
    @Default(false) bool isAutomatic,
    StoreApplicationMethod? applicationMethod,
  }) = _StorePromotion;

  factory StorePromotion.fromJson(Map<String, dynamic> json) =>
      _$StorePromotionFromJson(json);
}

@freezed
abstract class StoreApplicationMethod with _$StoreApplicationMethod {
  const factory StoreApplicationMethod({
    String? type,
    num? value,
    String? currencyCode,
  }) = _StoreApplicationMethod;

  factory StoreApplicationMethod.fromJson(Map<String, dynamic> json) =>
      _$StoreApplicationMethodFromJson(json);
}

@freezed
abstract class StorePaymentCollection with _$StorePaymentCollection {
  const factory StorePaymentCollection({
    required String id,
    @Default([]) List<StorePaymentSession> paymentSessions,
  }) = _StorePaymentCollection;

  factory StorePaymentCollection.fromJson(Map<String, dynamic> json) =>
      _$StorePaymentCollectionFromJson(json);
}

@freezed
abstract class StorePaymentSession with _$StorePaymentSession {
  const factory StorePaymentSession({
    required String id,
    required String providerId,
    String? status,
    Map<String, dynamic>? data,
  }) = _StorePaymentSession;

  factory StorePaymentSession.fromJson(Map<String, dynamic> json) =>
      _$StorePaymentSessionFromJson(json);
}
