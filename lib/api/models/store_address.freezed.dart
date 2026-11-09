// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreAddress {

 String? get id; String? get firstName; String? get lastName;@JsonKey(name: 'address_1') String? get address1;@JsonKey(name: 'address_2') String? get address2; String? get company; String? get postalCode; String? get city; String? get countryCode; String? get province; String? get phone;
/// Create a copy of StoreAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreAddressCopyWith<StoreAddress> get copyWith => _$StoreAddressCopyWithImpl<StoreAddress>(this as StoreAddress, _$identity);

  /// Serializes this StoreAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreAddress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreAddress&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.address2, _this.address2) || other.address2 == _this.address2)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.province, _this.province) || other.province == _this.province)&&(identical(other.phone, _this.phone) || other.phone == _this.phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreAddress;
  return Object.hash(runtimeType,_this.id,_this.firstName,_this.lastName,_this.address1,_this.address2,_this.company,_this.postalCode,_this.city,_this.countryCode,_this.province,_this.phone);
}

@override
String toString() {
  final _this = this as StoreAddress;
  return 'StoreAddress(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, address1: ${_this.address1}, address2: ${_this.address2}, company: ${_this.company}, postalCode: ${_this.postalCode}, city: ${_this.city}, countryCode: ${_this.countryCode}, province: ${_this.province}, phone: ${_this.phone})';
}


}

/// @nodoc
abstract mixin class $StoreAddressCopyWith<$Res>  {
  factory $StoreAddressCopyWith(StoreAddress value, $Res Function(StoreAddress) _then) = _$StoreAddressCopyWithImpl;
@useResult
$Res call({
 String? id, String? firstName, String? lastName,@JsonKey(name: 'address_1') String? address1,@JsonKey(name: 'address_2') String? address2, String? company, String? postalCode, String? city, String? countryCode, String? province, String? phone
});




}
/// @nodoc
class _$StoreAddressCopyWithImpl<$Res>
    implements $StoreAddressCopyWith<$Res> {
  _$StoreAddressCopyWithImpl(this._self, this._then);

  final StoreAddress _self;
  final $Res Function(StoreAddress) _then;

/// Create a copy of StoreAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? company = freezed,Object? postalCode = freezed,Object? city = freezed,Object? countryCode = freezed,Object? province = freezed,Object? phone = freezed,}) {
  return _then(StoreAddress(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreAddress].
extension StoreAddressPatterns on StoreAddress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreAddress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreAddress value)  $default,){
final _that = this;
switch (_that) {
case _StoreAddress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreAddress value)?  $default,){
final _that = this;
switch (_that) {
case _StoreAddress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? firstName,  String? lastName, @JsonKey(name: 'address_1')  String? address1, @JsonKey(name: 'address_2')  String? address2,  String? company,  String? postalCode,  String? city,  String? countryCode,  String? province,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreAddress() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.company,_that.postalCode,_that.city,_that.countryCode,_that.province,_that.phone);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? firstName,  String? lastName, @JsonKey(name: 'address_1')  String? address1, @JsonKey(name: 'address_2')  String? address2,  String? company,  String? postalCode,  String? city,  String? countryCode,  String? province,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _StoreAddress():
return $default(_that.id,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.company,_that.postalCode,_that.city,_that.countryCode,_that.province,_that.phone);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? firstName,  String? lastName, @JsonKey(name: 'address_1')  String? address1, @JsonKey(name: 'address_2')  String? address2,  String? company,  String? postalCode,  String? city,  String? countryCode,  String? province,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _StoreAddress() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.company,_that.postalCode,_that.city,_that.countryCode,_that.province,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreAddress extends StoreAddress {
  const _StoreAddress({this.id, this.firstName, this.lastName, @JsonKey(name: 'address_1') this.address1, @JsonKey(name: 'address_2') this.address2, this.company, this.postalCode, this.city, this.countryCode, this.province, this.phone}): super._();
  factory _StoreAddress.fromJson(Map<String, dynamic> json) => _$StoreAddressFromJson(json);

@override final  String? id;
@override final  String? firstName;
@override final  String? lastName;
@override@JsonKey(name: 'address_1') final  String? address1;
@override@JsonKey(name: 'address_2') final  String? address2;
@override final  String? company;
@override final  String? postalCode;
@override final  String? city;
@override final  String? countryCode;
@override final  String? province;
@override final  String? phone;

/// Create a copy of StoreAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreAddressCopyWith<_StoreAddress> get copyWith => __$StoreAddressCopyWithImpl<_StoreAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreAddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.company, company) || other.company == company)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.province, province) || other.province == province)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,firstName,lastName,address1,address2,company,postalCode,city,countryCode,province,phone);
}

@override
String toString() {
    return 'StoreAddress(id: $id, firstName: $firstName, lastName: $lastName, address1: $address1, address2: $address2, company: $company, postalCode: $postalCode, city: $city, countryCode: $countryCode, province: $province, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$StoreAddressCopyWith<$Res> implements $StoreAddressCopyWith<$Res> {
  factory _$StoreAddressCopyWith(_StoreAddress value, $Res Function(_StoreAddress) _then) = __$StoreAddressCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? firstName, String? lastName,@JsonKey(name: 'address_1') String? address1,@JsonKey(name: 'address_2') String? address2, String? company, String? postalCode, String? city, String? countryCode, String? province, String? phone
});




}
/// @nodoc
class __$StoreAddressCopyWithImpl<$Res>
    implements _$StoreAddressCopyWith<$Res> {
  __$StoreAddressCopyWithImpl(this._self, this._then);

  final _StoreAddress _self;
  final $Res Function(_StoreAddress) _then;

/// Create a copy of StoreAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? company = freezed,Object? postalCode = freezed,Object? city = freezed,Object? countryCode = freezed,Object? province = freezed,Object? phone = freezed,}) {
  return _then(_StoreAddress(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StoreCustomerAddress {

 String get id; String? get addressName; String? get firstName; String? get lastName;@JsonKey(name: 'address_1') String? get address1;@JsonKey(name: 'address_2') String? get address2; String? get company; String? get postalCode; String? get city; String? get countryCode; String? get province; String? get phone; bool get isDefaultShipping; bool get isDefaultBilling;
/// Create a copy of StoreCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCustomerAddressCopyWith<StoreCustomerAddress> get copyWith => _$StoreCustomerAddressCopyWithImpl<StoreCustomerAddress>(this as StoreCustomerAddress, _$identity);

  /// Serializes this StoreCustomerAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCustomerAddress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCustomerAddress&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.addressName, _this.addressName) || other.addressName == _this.addressName)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.address2, _this.address2) || other.address2 == _this.address2)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.province, _this.province) || other.province == _this.province)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.isDefaultShipping, _this.isDefaultShipping) || other.isDefaultShipping == _this.isDefaultShipping)&&(identical(other.isDefaultBilling, _this.isDefaultBilling) || other.isDefaultBilling == _this.isDefaultBilling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCustomerAddress;
  return Object.hash(runtimeType,_this.id,_this.addressName,_this.firstName,_this.lastName,_this.address1,_this.address2,_this.company,_this.postalCode,_this.city,_this.countryCode,_this.province,_this.phone,_this.isDefaultShipping,_this.isDefaultBilling);
}

@override
String toString() {
  final _this = this as StoreCustomerAddress;
  return 'StoreCustomerAddress(id: ${_this.id}, addressName: ${_this.addressName}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, address1: ${_this.address1}, address2: ${_this.address2}, company: ${_this.company}, postalCode: ${_this.postalCode}, city: ${_this.city}, countryCode: ${_this.countryCode}, province: ${_this.province}, phone: ${_this.phone}, isDefaultShipping: ${_this.isDefaultShipping}, isDefaultBilling: ${_this.isDefaultBilling})';
}


}

/// @nodoc
abstract mixin class $StoreCustomerAddressCopyWith<$Res>  {
  factory $StoreCustomerAddressCopyWith(StoreCustomerAddress value, $Res Function(StoreCustomerAddress) _then) = _$StoreCustomerAddressCopyWithImpl;
@useResult
$Res call({
 String id, String? addressName, String? firstName, String? lastName,@JsonKey(name: 'address_1') String? address1,@JsonKey(name: 'address_2') String? address2, String? company, String? postalCode, String? city, String? countryCode, String? province, String? phone, bool isDefaultShipping, bool isDefaultBilling
});




}
/// @nodoc
class _$StoreCustomerAddressCopyWithImpl<$Res>
    implements $StoreCustomerAddressCopyWith<$Res> {
  _$StoreCustomerAddressCopyWithImpl(this._self, this._then);

  final StoreCustomerAddress _self;
  final $Res Function(StoreCustomerAddress) _then;

/// Create a copy of StoreCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? addressName = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? company = freezed,Object? postalCode = freezed,Object? city = freezed,Object? countryCode = freezed,Object? province = freezed,Object? phone = freezed,Object? isDefaultShipping = null,Object? isDefaultBilling = null,}) {
  return _then(StoreCustomerAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,addressName: freezed == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isDefaultShipping: null == isDefaultShipping ? _self.isDefaultShipping : isDefaultShipping // ignore: cast_nullable_to_non_nullable
as bool,isDefaultBilling: null == isDefaultBilling ? _self.isDefaultBilling : isDefaultBilling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCustomerAddress].
extension StoreCustomerAddressPatterns on StoreCustomerAddress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCustomerAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCustomerAddress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCustomerAddress value)  $default,){
final _that = this;
switch (_that) {
case _StoreCustomerAddress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCustomerAddress value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCustomerAddress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? addressName,  String? firstName,  String? lastName, @JsonKey(name: 'address_1')  String? address1, @JsonKey(name: 'address_2')  String? address2,  String? company,  String? postalCode,  String? city,  String? countryCode,  String? province,  String? phone,  bool isDefaultShipping,  bool isDefaultBilling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCustomerAddress() when $default != null:
return $default(_that.id,_that.addressName,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.company,_that.postalCode,_that.city,_that.countryCode,_that.province,_that.phone,_that.isDefaultShipping,_that.isDefaultBilling);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? addressName,  String? firstName,  String? lastName, @JsonKey(name: 'address_1')  String? address1, @JsonKey(name: 'address_2')  String? address2,  String? company,  String? postalCode,  String? city,  String? countryCode,  String? province,  String? phone,  bool isDefaultShipping,  bool isDefaultBilling)  $default,) {final _that = this;
switch (_that) {
case _StoreCustomerAddress():
return $default(_that.id,_that.addressName,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.company,_that.postalCode,_that.city,_that.countryCode,_that.province,_that.phone,_that.isDefaultShipping,_that.isDefaultBilling);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? addressName,  String? firstName,  String? lastName, @JsonKey(name: 'address_1')  String? address1, @JsonKey(name: 'address_2')  String? address2,  String? company,  String? postalCode,  String? city,  String? countryCode,  String? province,  String? phone,  bool isDefaultShipping,  bool isDefaultBilling)?  $default,) {final _that = this;
switch (_that) {
case _StoreCustomerAddress() when $default != null:
return $default(_that.id,_that.addressName,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.company,_that.postalCode,_that.city,_that.countryCode,_that.province,_that.phone,_that.isDefaultShipping,_that.isDefaultBilling);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCustomerAddress extends StoreCustomerAddress {
  const _StoreCustomerAddress({required this.id, this.addressName, this.firstName, this.lastName, @JsonKey(name: 'address_1') this.address1, @JsonKey(name: 'address_2') this.address2, this.company, this.postalCode, this.city, this.countryCode, this.province, this.phone, this.isDefaultShipping = false, this.isDefaultBilling = false}): super._();
  factory _StoreCustomerAddress.fromJson(Map<String, dynamic> json) => _$StoreCustomerAddressFromJson(json);

@override final  String id;
@override final  String? addressName;
@override final  String? firstName;
@override final  String? lastName;
@override@JsonKey(name: 'address_1') final  String? address1;
@override@JsonKey(name: 'address_2') final  String? address2;
@override final  String? company;
@override final  String? postalCode;
@override final  String? city;
@override final  String? countryCode;
@override final  String? province;
@override final  String? phone;
@override@JsonKey() final  bool isDefaultShipping;
@override@JsonKey() final  bool isDefaultBilling;

/// Create a copy of StoreCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCustomerAddressCopyWith<_StoreCustomerAddress> get copyWith => __$StoreCustomerAddressCopyWithImpl<_StoreCustomerAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCustomerAddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCustomerAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.addressName, addressName) || other.addressName == addressName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.company, company) || other.company == company)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.province, province) || other.province == province)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isDefaultShipping, isDefaultShipping) || other.isDefaultShipping == isDefaultShipping)&&(identical(other.isDefaultBilling, isDefaultBilling) || other.isDefaultBilling == isDefaultBilling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,addressName,firstName,lastName,address1,address2,company,postalCode,city,countryCode,province,phone,isDefaultShipping,isDefaultBilling);
}

@override
String toString() {
    return 'StoreCustomerAddress(id: $id, addressName: $addressName, firstName: $firstName, lastName: $lastName, address1: $address1, address2: $address2, company: $company, postalCode: $postalCode, city: $city, countryCode: $countryCode, province: $province, phone: $phone, isDefaultShipping: $isDefaultShipping, isDefaultBilling: $isDefaultBilling)';
}


}

/// @nodoc
abstract mixin class _$StoreCustomerAddressCopyWith<$Res> implements $StoreCustomerAddressCopyWith<$Res> {
  factory _$StoreCustomerAddressCopyWith(_StoreCustomerAddress value, $Res Function(_StoreCustomerAddress) _then) = __$StoreCustomerAddressCopyWithImpl;
@override @useResult
$Res call({
 String id, String? addressName, String? firstName, String? lastName,@JsonKey(name: 'address_1') String? address1,@JsonKey(name: 'address_2') String? address2, String? company, String? postalCode, String? city, String? countryCode, String? province, String? phone, bool isDefaultShipping, bool isDefaultBilling
});




}
/// @nodoc
class __$StoreCustomerAddressCopyWithImpl<$Res>
    implements _$StoreCustomerAddressCopyWith<$Res> {
  __$StoreCustomerAddressCopyWithImpl(this._self, this._then);

  final _StoreCustomerAddress _self;
  final $Res Function(_StoreCustomerAddress) _then;

/// Create a copy of StoreCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? addressName = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? company = freezed,Object? postalCode = freezed,Object? city = freezed,Object? countryCode = freezed,Object? province = freezed,Object? phone = freezed,Object? isDefaultShipping = null,Object? isDefaultBilling = null,}) {
  return _then(_StoreCustomerAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,addressName: freezed == addressName ? _self.addressName : addressName // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isDefaultShipping: null == isDefaultShipping ? _self.isDefaultShipping : isDefaultShipping // ignore: cast_nullable_to_non_nullable
as bool,isDefaultBilling: null == isDefaultBilling ? _self.isDefaultBilling : isDefaultBilling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
