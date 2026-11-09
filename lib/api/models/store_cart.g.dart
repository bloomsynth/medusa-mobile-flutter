// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreCart _$StoreCartFromJson(Map<String, dynamic> json) => _StoreCart(
  id: json['id'] as String,
  currencyCode: json['currency_code'] as String,
  regionId: json['region_id'] as String?,
  customerId: json['customer_id'] as String?,
  email: json['email'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => StoreCartLineItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  shippingAddress: json['shipping_address'] == null
      ? null
      : StoreAddress.fromJson(json['shipping_address'] as Map<String, dynamic>),
  billingAddress: json['billing_address'] == null
      ? null
      : StoreAddress.fromJson(json['billing_address'] as Map<String, dynamic>),
  shippingMethods:
      (json['shipping_methods'] as List<dynamic>?)
          ?.map(
            (e) => StoreCartShippingMethod.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  promotions:
      (json['promotions'] as List<dynamic>?)
          ?.map((e) => StorePromotion.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  paymentCollection: json['payment_collection'] == null
      ? null
      : StorePaymentCollection.fromJson(
          json['payment_collection'] as Map<String, dynamic>,
        ),
  total: json['total'] as num? ?? 0,
  subtotal: json['subtotal'] as num? ?? 0,
  itemSubtotal: json['item_subtotal'] as num? ?? 0,
  shippingTotal: json['shipping_total'] as num? ?? 0,
  taxTotal: json['tax_total'] as num? ?? 0,
  discountTotal: json['discount_total'] as num? ?? 0,
);

Map<String, dynamic> _$StoreCartToJson(
  _StoreCart instance,
) => <String, dynamic>{
  'id': instance.id,
  'currency_code': instance.currencyCode,
  'region_id': ?instance.regionId,
  'customer_id': ?instance.customerId,
  'email': ?instance.email,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'shipping_address': ?instance.shippingAddress?.toJson(),
  'billing_address': ?instance.billingAddress?.toJson(),
  'shipping_methods': instance.shippingMethods.map((e) => e.toJson()).toList(),
  'promotions': instance.promotions.map((e) => e.toJson()).toList(),
  'payment_collection': ?instance.paymentCollection?.toJson(),
  'total': instance.total,
  'subtotal': instance.subtotal,
  'item_subtotal': instance.itemSubtotal,
  'shipping_total': instance.shippingTotal,
  'tax_total': instance.taxTotal,
  'discount_total': instance.discountTotal,
};

_StoreCartLineItem _$StoreCartLineItemFromJson(Map<String, dynamic> json) =>
    _StoreCartLineItem(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: json['unit_price'] as num? ?? 0,
      title: json['title'] as String?,
      productTitle: json['product_title'] as String?,
      variantTitle: json['variant_title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      productId: json['product_id'] as String?,
      variantId: json['variant_id'] as String?,
      total: json['total'] as num?,
      originalTotal: json['original_total'] as num?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$StoreCartLineItemToJson(_StoreCartLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'title': ?instance.title,
      'product_title': ?instance.productTitle,
      'variant_title': ?instance.variantTitle,
      'thumbnail': ?instance.thumbnail,
      'product_id': ?instance.productId,
      'variant_id': ?instance.variantId,
      'total': ?instance.total,
      'original_total': ?instance.originalTotal,
      'created_at': ?instance.createdAt?.toIso8601String(),
    };

_StoreCartShippingMethod _$StoreCartShippingMethodFromJson(
  Map<String, dynamic> json,
) => _StoreCartShippingMethod(
  id: json['id'] as String,
  shippingOptionId: json['shipping_option_id'] as String?,
  name: json['name'] as String?,
  amount: json['amount'] as num?,
);

Map<String, dynamic> _$StoreCartShippingMethodToJson(
  _StoreCartShippingMethod instance,
) => <String, dynamic>{
  'id': instance.id,
  'shipping_option_id': ?instance.shippingOptionId,
  'name': ?instance.name,
  'amount': ?instance.amount,
};

_StorePromotion _$StorePromotionFromJson(Map<String, dynamic> json) =>
    _StorePromotion(
      id: json['id'] as String,
      code: json['code'] as String?,
      isAutomatic: json['is_automatic'] as bool? ?? false,
      applicationMethod: json['application_method'] == null
          ? null
          : StoreApplicationMethod.fromJson(
              json['application_method'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StorePromotionToJson(_StorePromotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': ?instance.code,
      'is_automatic': instance.isAutomatic,
      'application_method': ?instance.applicationMethod?.toJson(),
    };

_StoreApplicationMethod _$StoreApplicationMethodFromJson(
  Map<String, dynamic> json,
) => _StoreApplicationMethod(
  type: json['type'] as String?,
  value: json['value'] as num?,
  currencyCode: json['currency_code'] as String?,
);

Map<String, dynamic> _$StoreApplicationMethodToJson(
  _StoreApplicationMethod instance,
) => <String, dynamic>{
  'type': ?instance.type,
  'value': ?instance.value,
  'currency_code': ?instance.currencyCode,
};

_StorePaymentCollection _$StorePaymentCollectionFromJson(
  Map<String, dynamic> json,
) => _StorePaymentCollection(
  id: json['id'] as String,
  paymentSessions:
      (json['payment_sessions'] as List<dynamic>?)
          ?.map((e) => StorePaymentSession.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StorePaymentCollectionToJson(
  _StorePaymentCollection instance,
) => <String, dynamic>{
  'id': instance.id,
  'payment_sessions': instance.paymentSessions.map((e) => e.toJson()).toList(),
};

_StorePaymentSession _$StorePaymentSessionFromJson(Map<String, dynamic> json) =>
    _StorePaymentSession(
      id: json['id'] as String,
      providerId: json['provider_id'] as String,
      status: json['status'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StorePaymentSessionToJson(
  _StorePaymentSession instance,
) => <String, dynamic>{
  'id': instance.id,
  'provider_id': instance.providerId,
  'status': ?instance.status,
  'data': ?instance.data,
};
