// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreAddress _$StoreAddressFromJson(Map<String, dynamic> json) =>
    _StoreAddress(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      company: json['company'] as String?,
      postalCode: json['postal_code'] as String?,
      city: json['city'] as String?,
      countryCode: json['country_code'] as String?,
      province: json['province'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$StoreAddressToJson(_StoreAddress instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'address_1': ?instance.address1,
      'address_2': ?instance.address2,
      'company': ?instance.company,
      'postal_code': ?instance.postalCode,
      'city': ?instance.city,
      'country_code': ?instance.countryCode,
      'province': ?instance.province,
      'phone': ?instance.phone,
    };

_StoreCustomerAddress _$StoreCustomerAddressFromJson(
  Map<String, dynamic> json,
) => _StoreCustomerAddress(
  id: json['id'] as String,
  addressName: json['address_name'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  address1: json['address_1'] as String?,
  address2: json['address_2'] as String?,
  company: json['company'] as String?,
  postalCode: json['postal_code'] as String?,
  city: json['city'] as String?,
  countryCode: json['country_code'] as String?,
  province: json['province'] as String?,
  phone: json['phone'] as String?,
  isDefaultShipping: json['is_default_shipping'] as bool? ?? false,
  isDefaultBilling: json['is_default_billing'] as bool? ?? false,
);

Map<String, dynamic> _$StoreCustomerAddressToJson(
  _StoreCustomerAddress instance,
) => <String, dynamic>{
  'id': instance.id,
  'address_name': ?instance.addressName,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'address_1': ?instance.address1,
  'address_2': ?instance.address2,
  'company': ?instance.company,
  'postal_code': ?instance.postalCode,
  'city': ?instance.city,
  'country_code': ?instance.countryCode,
  'province': ?instance.province,
  'phone': ?instance.phone,
  'is_default_shipping': instance.isDefaultShipping,
  'is_default_billing': instance.isDefaultBilling,
};
