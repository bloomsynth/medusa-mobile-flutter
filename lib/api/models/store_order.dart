import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medusa_mobile/api/models/store_address.dart';

part 'store_order.freezed.dart';
part 'store_order.g.dart';

@freezed
abstract class StoreOrder with _$StoreOrder {
  const factory StoreOrder({
    required String id,
    required String currencyCode,
    int? displayId,
    String? status,
    String? fulfillmentStatus,
    String? paymentStatus,
    String? email,
    DateTime? createdAt,
    @Default([]) List<StoreOrderLineItem> items,
    StoreAddress? shippingAddress,
    StoreAddress? billingAddress,
    @Default(0) num total,
    @Default(0) num subtotal,
    @Default(0) num shippingTotal,
    @Default(0) num taxTotal,
    @Default(0) num discountTotal,
  }) = _StoreOrder;

  factory StoreOrder.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderFromJson(json);
}

@freezed
abstract class StoreOrderLineItem with _$StoreOrderLineItem {
  const factory StoreOrderLineItem({
    required String id,
    required int quantity,
    @Default(0) num unitPrice,
    String? title,
    String? productTitle,
    String? variantTitle,
    String? thumbnail,
    num? total,
    num? originalTotal,
  }) = _StoreOrderLineItem;

  factory StoreOrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderLineItemFromJson(json);
}
