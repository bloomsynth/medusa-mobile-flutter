import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_address.freezed.dart';
part 'store_address.g.dart';

/// A shipping or billing address on a cart or order.
@freezed
abstract class StoreAddress with _$StoreAddress {
  const factory StoreAddress({
    String? id,
    String? firstName,
    String? lastName,
    @JsonKey(name: 'address_1') String? address1,
    @JsonKey(name: 'address_2') String? address2,
    String? company,
    String? postalCode,
    String? city,
    String? countryCode,
    String? province,
    String? phone,
  }) = _StoreAddress;

  const StoreAddress._();

  factory StoreAddress.fromJson(Map<String, dynamic> json) =>
      _$StoreAddressFromJson(json);

  String get fullName =>
      [firstName, lastName].where((p) => p != null && p.isNotEmpty).join(' ');

  /// Whether the fields the checkout requires are all filled in.
  bool get isComplete =>
      _filled(firstName) &&
      _filled(lastName) &&
      _filled(address1) &&
      _filled(postalCode) &&
      _filled(city) &&
      _filled(countryCode) &&
      _filled(phone);

  /// The fields compared when deciding whether billing equals shipping.
  Map<String, String> get comparableFields => {
    'first_name': firstName ?? '',
    'last_name': lastName ?? '',
    'address_1': address1 ?? '',
    'company': company ?? '',
    'postal_code': postalCode ?? '',
    'city': city ?? '',
    'country_code': countryCode ?? '',
    'province': province ?? '',
    'phone': phone ?? '',
  };

  static bool _filled(String? value) => value != null && value.isNotEmpty;
}

/// An address saved on the customer's account.
@freezed
abstract class StoreCustomerAddress with _$StoreCustomerAddress {
  const factory StoreCustomerAddress({
    required String id,
    String? addressName,
    String? firstName,
    String? lastName,
    @JsonKey(name: 'address_1') String? address1,
    @JsonKey(name: 'address_2') String? address2,
    String? company,
    String? postalCode,
    String? city,
    String? countryCode,
    String? province,
    String? phone,
    @Default(false) bool isDefaultShipping,
    @Default(false) bool isDefaultBilling,
  }) = _StoreCustomerAddress;

  const StoreCustomerAddress._();

  factory StoreCustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$StoreCustomerAddressFromJson(json);

  String get fullName =>
      [firstName, lastName].where((p) => p != null && p.isNotEmpty).join(' ');

  StoreAddress toAddress() => StoreAddress(
    firstName: firstName,
    lastName: lastName,
    address1: address1,
    address2: address2,
    company: company,
    postalCode: postalCode,
    city: city,
    countryCode: countryCode,
    province: province,
    phone: phone,
  );
}
