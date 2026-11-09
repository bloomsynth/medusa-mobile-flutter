// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreCustomer {

 String get id; String? get email; String? get firstName; String? get lastName; String? get phone;
/// Create a copy of StoreCustomer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCustomerCopyWith<StoreCustomer> get copyWith => _$StoreCustomerCopyWithImpl<StoreCustomer>(this as StoreCustomer, _$identity);

  /// Serializes this StoreCustomer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCustomer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCustomer&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCustomer;
  return Object.hash(runtimeType,_this.id,_this.email,_this.firstName,_this.lastName,_this.phone);
}

@override
String toString() {
  final _this = this as StoreCustomer;
  return 'StoreCustomer(id: ${_this.id}, email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, phone: ${_this.phone})';
}


}

/// @nodoc
abstract mixin class $StoreCustomerCopyWith<$Res>  {
  factory $StoreCustomerCopyWith(StoreCustomer value, $Res Function(StoreCustomer) _then) = _$StoreCustomerCopyWithImpl;
@useResult
$Res call({
 String id, String? email, String? firstName, String? lastName, String? phone
});




}
/// @nodoc
class _$StoreCustomerCopyWithImpl<$Res>
    implements $StoreCustomerCopyWith<$Res> {
  _$StoreCustomerCopyWithImpl(this._self, this._then);

  final StoreCustomer _self;
  final $Res Function(StoreCustomer) _then;

/// Create a copy of StoreCustomer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,}) {
  return _then(StoreCustomer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCustomer].
extension StoreCustomerPatterns on StoreCustomer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCustomer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCustomer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCustomer value)  $default,){
final _that = this;
switch (_that) {
case _StoreCustomer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCustomer value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCustomer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? email,  String? firstName,  String? lastName,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCustomer() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? email,  String? firstName,  String? lastName,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _StoreCustomer():
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? email,  String? firstName,  String? lastName,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _StoreCustomer() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCustomer extends StoreCustomer {
  const _StoreCustomer({required this.id, this.email, this.firstName, this.lastName, this.phone}): super._();
  factory _StoreCustomer.fromJson(Map<String, dynamic> json) => _$StoreCustomerFromJson(json);

@override final  String id;
@override final  String? email;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? phone;

/// Create a copy of StoreCustomer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCustomerCopyWith<_StoreCustomer> get copyWith => __$StoreCustomerCopyWithImpl<_StoreCustomer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCustomerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCustomer&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,firstName,lastName,phone);
}

@override
String toString() {
    return 'StoreCustomer(id: $id, email: $email, firstName: $firstName, lastName: $lastName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$StoreCustomerCopyWith<$Res> implements $StoreCustomerCopyWith<$Res> {
  factory _$StoreCustomerCopyWith(_StoreCustomer value, $Res Function(_StoreCustomer) _then) = __$StoreCustomerCopyWithImpl;
@override @useResult
$Res call({
 String id, String? email, String? firstName, String? lastName, String? phone
});




}
/// @nodoc
class __$StoreCustomerCopyWithImpl<$Res>
    implements _$StoreCustomerCopyWith<$Res> {
  __$StoreCustomerCopyWithImpl(this._self, this._then);

  final _StoreCustomer _self;
  final $Res Function(_StoreCustomer) _then;

/// Create a copy of StoreCustomer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,}) {
  return _then(_StoreCustomer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
