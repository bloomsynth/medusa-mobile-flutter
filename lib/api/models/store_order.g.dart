// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreOrder _$StoreOrderFromJson(Map<String, dynamic> json) => _StoreOrder(
  id: json['id'] as String,
  currencyCode: json['currency_code'] as String,
  displayId: (json['display_id'] as num?)?.toInt(),
  status: json['status'] as String?,
  fulfillmentStatus: json['fulfillment_status'] as String?,
  paymentStatus: json['payment_status'] as String?,
  email: json['email'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => StoreOrderLineItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  shippingAddress: json['shipping_address'] == null
      ? null
      : StoreAddress.fromJson(json['shipping_address'] as Map<String, dynamic>),
  billingAddress: json['billing_address'] == null
      ? null
      : StoreAddress.fromJson(json['billing_address'] as Map<String, dynamic>),
  total: json['total'] as num? ?? 0,
  subtotal: json['subtotal'] as num? ?? 0,
  shippingTotal: json['shipping_total'] as num? ?? 0,
  taxTotal: json['tax_total'] as num? ?? 0,
  discountTotal: json['discount_total'] as num? ?? 0,
);

Map<String, dynamic> _$StoreOrderToJson(_StoreOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency_code': instance.currencyCode,
      'display_id': ?instance.displayId,
      'status': ?instance.status,
      'fulfillment_status': ?instance.fulfillmentStatus,
      'payment_status': ?instance.paymentStatus,
      'email': ?instance.email,
      'created_at': ?instance.createdAt?.toIso8601String(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'shipping_address': ?instance.shippingAddress?.toJson(),
      'billing_address': ?instance.billingAddress?.toJson(),
      'total': instance.total,
      'subtotal': instance.subtotal,
      'shipping_total': instance.shippingTotal,
      'tax_total': instance.taxTotal,
      'discount_total': instance.discountTotal,
    };

_StoreOrderLineItem _$StoreOrderLineItemFromJson(Map<String, dynamic> json) =>
    _StoreOrderLineItem(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: json['unit_price'] as num? ?? 0,
      title: json['title'] as String?,
      productTitle: json['product_title'] as String?,
      variantTitle: json['variant_title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      total: json['total'] as num?,
      originalTotal: json['original_total'] as num?,
    );

Map<String, dynamic> _$StoreOrderLineItemToJson(_StoreOrderLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'title': ?instance.title,
      'product_title': ?instance.productTitle,
      'variant_title': ?instance.variantTitle,
      'thumbnail': ?instance.thumbnail,
      'total': ?instance.total,
      'original_total': ?instance.originalTotal,
    };
