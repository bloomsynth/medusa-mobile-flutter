// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreShippingOption {

 String get id; String get name; String get priceType; num? get amount;
/// Create a copy of StoreShippingOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreShippingOptionCopyWith<StoreShippingOption> get copyWith => _$StoreShippingOptionCopyWithImpl<StoreShippingOption>(this as StoreShippingOption, _$identity);

  /// Serializes this StoreShippingOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreShippingOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreShippingOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.priceType, _this.priceType) || other.priceType == _this.priceType)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreShippingOption;
  return Object.hash(runtimeType,_this.id,_this.name,_this.priceType,_this.amount);
}

@override
String toString() {
  final _this = this as StoreShippingOption;
  return 'StoreShippingOption(id: ${_this.id}, name: ${_this.name}, priceType: ${_this.priceType}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $StoreShippingOptionCopyWith<$Res>  {
  factory $StoreShippingOptionCopyWith(StoreShippingOption value, $Res Function(StoreShippingOption) _then) = _$StoreShippingOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String priceType, num? amount
});




}
/// @nodoc
class _$StoreShippingOptionCopyWithImpl<$Res>
    implements $StoreShippingOptionCopyWith<$Res> {
  _$StoreShippingOptionCopyWithImpl(this._self, this._then);

  final StoreShippingOption _self;
  final $Res Function(StoreShippingOption) _then;

/// Create a copy of StoreShippingOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? priceType = null,Object? amount = freezed,}) {
  return _then(StoreShippingOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceType: null == priceType ? _self.priceType : priceType // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreShippingOption].
extension StoreShippingOptionPatterns on StoreShippingOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreShippingOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreShippingOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreShippingOption value)  $default,){
final _that = this;
switch (_that) {
case _StoreShippingOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreShippingOption value)?  $default,){
final _that = this;
switch (_that) {
case _StoreShippingOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String priceType,  num? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreShippingOption() when $default != null:
return $default(_that.id,_that.name,_that.priceType,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String priceType,  num? amount)  $default,) {final _that = this;
switch (_that) {
case _StoreShippingOption():
return $default(_that.id,_that.name,_that.priceType,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String priceType,  num? amount)?  $default,) {final _that = this;
switch (_that) {
case _StoreShippingOption() when $default != null:
return $default(_that.id,_that.name,_that.priceType,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreShippingOption extends StoreShippingOption {
  const _StoreShippingOption({required this.id, required this.name, this.priceType = 'flat', this.amount}): super._();
  factory _StoreShippingOption.fromJson(Map<String, dynamic> json) => _$StoreShippingOptionFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String priceType;
@override final  num? amount;

/// Create a copy of StoreShippingOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreShippingOptionCopyWith<_StoreShippingOption> get copyWith => __$StoreShippingOptionCopyWithImpl<_StoreShippingOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreShippingOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreShippingOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceType, priceType) || other.priceType == priceType)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,priceType,amount);
}

@override
String toString() {
    return 'StoreShippingOption(id: $id, name: $name, priceType: $priceType, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$StoreShippingOptionCopyWith<$Res> implements $StoreShippingOptionCopyWith<$Res> {
  factory _$StoreShippingOptionCopyWith(_StoreShippingOption value, $Res Function(_StoreShippingOption) _then) = __$StoreShippingOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String priceType, num? amount
});




}
/// @nodoc
class __$StoreShippingOptionCopyWithImpl<$Res>
    implements _$StoreShippingOptionCopyWith<$Res> {
  __$StoreShippingOptionCopyWithImpl(this._self, this._then);

  final _StoreShippingOption _self;
  final $Res Function(_StoreShippingOption) _then;

/// Create a copy of StoreShippingOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? priceType = null,Object? amount = freezed,}) {
  return _then(_StoreShippingOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceType: null == priceType ? _self.priceType : priceType // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$StorePaymentProvider {

 String get id; bool get isEnabled;
/// Create a copy of StorePaymentProvider
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorePaymentProviderCopyWith<StorePaymentProvider> get copyWith => _$StorePaymentProviderCopyWithImpl<StorePaymentProvider>(this as StorePaymentProvider, _$identity);

  /// Serializes this StorePaymentProvider to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StorePaymentProvider;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorePaymentProvider&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.isEnabled, _this.isEnabled) || other.isEnabled == _this.isEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StorePaymentProvider;
  return Object.hash(runtimeType,_this.id,_this.isEnabled);
}

@override
String toString() {
  final _this = this as StorePaymentProvider;
  return 'StorePaymentProvider(id: ${_this.id}, isEnabled: ${_this.isEnabled})';
}


}

/// @nodoc
abstract mixin class $StorePaymentProviderCopyWith<$Res>  {
  factory $StorePaymentProviderCopyWith(StorePaymentProvider value, $Res Function(StorePaymentProvider) _then) = _$StorePaymentProviderCopyWithImpl;
@useResult
$Res call({
 String id, bool isEnabled
});




}
/// @nodoc
class _$StorePaymentProviderCopyWithImpl<$Res>
    implements $StorePaymentProviderCopyWith<$Res> {
  _$StorePaymentProviderCopyWithImpl(this._self, this._then);

  final StorePaymentProvider _self;
  final $Res Function(StorePaymentProvider) _then;

/// Create a copy of StorePaymentProvider
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isEnabled = null,}) {
  return _then(StorePaymentProvider(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StorePaymentProvider].
extension StorePaymentProviderPatterns on StorePaymentProvider {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorePaymentProvider value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorePaymentProvider() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorePaymentProvider value)  $default,){
final _that = this;
switch (_that) {
case _StorePaymentProvider():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorePaymentProvider value)?  $default,){
final _that = this;
switch (_that) {
case _StorePaymentProvider() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorePaymentProvider() when $default != null:
return $default(_that.id,_that.isEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isEnabled)  $default,) {final _that = this;
switch (_that) {
case _StorePaymentProvider():
return $default(_that.id,_that.isEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isEnabled)?  $default,) {final _that = this;
switch (_that) {
case _StorePaymentProvider() when $default != null:
return $default(_that.id,_that.isEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorePaymentProvider implements StorePaymentProvider {
  const _StorePaymentProvider({required this.id, this.isEnabled = true});
  factory _StorePaymentProvider.fromJson(Map<String, dynamic> json) => _$StorePaymentProviderFromJson(json);

@override final  String id;
@override@JsonKey() final  bool isEnabled;

/// Create a copy of StorePaymentProvider
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorePaymentProviderCopyWith<_StorePaymentProvider> get copyWith => __$StorePaymentProviderCopyWithImpl<_StorePaymentProvider>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorePaymentProviderToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorePaymentProvider&&(identical(other.id, id) || other.id == id)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,isEnabled);
}

@override
String toString() {
    return 'StorePaymentProvider(id: $id, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class _$StorePaymentProviderCopyWith<$Res> implements $StorePaymentProviderCopyWith<$Res> {
  factory _$StorePaymentProviderCopyWith(_StorePaymentProvider value, $Res Function(_StorePaymentProvider) _then) = __$StorePaymentProviderCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isEnabled
});




}
/// @nodoc
class __$StorePaymentProviderCopyWithImpl<$Res>
    implements _$StorePaymentProviderCopyWith<$Res> {
  __$StorePaymentProviderCopyWithImpl(this._self, this._then);

  final _StorePaymentProvider _self;
  final $Res Function(_StorePaymentProvider) _then;

/// Create a copy of StorePaymentProvider
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isEnabled = null,}) {
  return _then(_StorePaymentProvider(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
