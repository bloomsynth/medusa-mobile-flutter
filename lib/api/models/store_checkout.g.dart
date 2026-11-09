// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreShippingOption _$StoreShippingOptionFromJson(Map<String, dynamic> json) =>
    _StoreShippingOption(
      id: json['id'] as String,
      name: json['name'] as String,
      priceType: json['price_type'] as String? ?? 'flat',
      amount: json['amount'] as num?,
    );

Map<String, dynamic> _$StoreShippingOptionToJson(
  _StoreShippingOption instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price_type': instance.priceType,
  'amount': ?instance.amount,
};

_StorePaymentProvider _$StorePaymentProviderFromJson(
  Map<String, dynamic> json,
) => _StorePaymentProvider(
  id: json['id'] as String,
  isEnabled: json['is_enabled'] as bool? ?? true,
);

Map<String, dynamic> _$StorePaymentProviderToJson(
  _StorePaymentProvider instance,
) => <String, dynamic>{'id': instance.id, 'is_enabled': instance.isEnabled};
