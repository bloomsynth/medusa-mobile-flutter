// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreCustomer _$StoreCustomerFromJson(Map<String, dynamic> json) =>
    _StoreCustomer(
      id: json['id'] as String,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$StoreCustomerToJson(_StoreCustomer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': ?instance.email,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'phone': ?instance.phone,
    };
