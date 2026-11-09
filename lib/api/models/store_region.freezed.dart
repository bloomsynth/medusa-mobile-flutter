// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreRegion {

 String get id; String get name; String get currencyCode; List<StoreRegionCountry> get countries;
/// Create a copy of StoreRegion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreRegionCopyWith<StoreRegion> get copyWith => _$StoreRegionCopyWithImpl<StoreRegion>(this as StoreRegion, _$identity);

  /// Serializes this StoreRegion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreRegion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreRegion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode)&&const DeepCollectionEquality().equals(other.countries, _this.countries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreRegion;
  return Object.hash(runtimeType,_this.id,_this.name,_this.currencyCode,const DeepCollectionEquality().hash(_this.countries));
}

@override
String toString() {
  final _this = this as StoreRegion;
  return 'StoreRegion(id: ${_this.id}, name: ${_this.name}, currencyCode: ${_this.currencyCode}, countries: ${_this.countries})';
}


}

/// @nodoc
abstract mixin class $StoreRegionCopyWith<$Res>  {
  factory $StoreRegionCopyWith(StoreRegion value, $Res Function(StoreRegion) _then) = _$StoreRegionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String currencyCode, List<StoreRegionCountry> countries
});




}
/// @nodoc
class _$StoreRegionCopyWithImpl<$Res>
    implements $StoreRegionCopyWith<$Res> {
  _$StoreRegionCopyWithImpl(this._self, this._then);

  final StoreRegion _self;
  final $Res Function(StoreRegion) _then;

/// Create a copy of StoreRegion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? currencyCode = null,Object? countries = null,}) {
  return _then(StoreRegion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,countries: null == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<StoreRegionCountry>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreRegion].
extension StoreRegionPatterns on StoreRegion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreRegion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreRegion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreRegion value)  $default,){
final _that = this;
switch (_that) {
case _StoreRegion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreRegion value)?  $default,){
final _that = this;
switch (_that) {
case _StoreRegion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String currencyCode,  List<StoreRegionCountry> countries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreRegion() when $default != null:
return $default(_that.id,_that.name,_that.currencyCode,_that.countries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String currencyCode,  List<StoreRegionCountry> countries)  $default,) {final _that = this;
switch (_that) {
case _StoreRegion():
return $default(_that.id,_that.name,_that.currencyCode,_that.countries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String currencyCode,  List<StoreRegionCountry> countries)?  $default,) {final _that = this;
switch (_that) {
case _StoreRegion() when $default != null:
return $default(_that.id,_that.name,_that.currencyCode,_that.countries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreRegion implements StoreRegion {
  const _StoreRegion({required this.id, required this.name, required this.currencyCode,  List<StoreRegionCountry> countries = const []}): _countries = countries;
  factory _StoreRegion.fromJson(Map<String, dynamic> json) => _$StoreRegionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String currencyCode;
 final  List<StoreRegionCountry> _countries;
@override@JsonKey() List<StoreRegionCountry> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}


/// Create a copy of StoreRegion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreRegionCopyWith<_StoreRegion> get copyWith => __$StoreRegionCopyWithImpl<_StoreRegion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreRegionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreRegion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&const DeepCollectionEquality().equals(other.countries, _countries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,currencyCode,const DeepCollectionEquality().hash(_countries));
}

@override
String toString() {
    return 'StoreRegion(id: $id, name: $name, currencyCode: $currencyCode, countries: $countries)';
}


}

/// @nodoc
abstract mixin class _$StoreRegionCopyWith<$Res> implements $StoreRegionCopyWith<$Res> {
  factory _$StoreRegionCopyWith(_StoreRegion value, $Res Function(_StoreRegion) _then) = __$StoreRegionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String currencyCode, List<StoreRegionCountry> countries
});




}
/// @nodoc
class __$StoreRegionCopyWithImpl<$Res>
    implements _$StoreRegionCopyWith<$Res> {
  __$StoreRegionCopyWithImpl(this._self, this._then);

  final _StoreRegion _self;
  final $Res Function(_StoreRegion) _then;

/// Create a copy of StoreRegion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? currencyCode = null,Object? countries = null,}) {
  return _then(_StoreRegion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<StoreRegionCountry>,
  ));
}


}


/// @nodoc
mixin _$StoreRegionCountry {

@JsonKey(name: 'iso_2') String get iso2;@JsonKey(name: 'iso_3') String? get iso3; String? get name; String? get displayName; String? get numCode;
/// Create a copy of StoreRegionCountry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreRegionCountryCopyWith<StoreRegionCountry> get copyWith => _$StoreRegionCountryCopyWithImpl<StoreRegionCountry>(this as StoreRegionCountry, _$identity);

  /// Serializes this StoreRegionCountry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreRegionCountry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreRegionCountry&&(identical(other.iso2, _this.iso2) || other.iso2 == _this.iso2)&&(identical(other.iso3, _this.iso3) || other.iso3 == _this.iso3)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.numCode, _this.numCode) || other.numCode == _this.numCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreRegionCountry;
  return Object.hash(runtimeType,_this.iso2,_this.iso3,_this.name,_this.displayName,_this.numCode);
}

@override
String toString() {
  final _this = this as StoreRegionCountry;
  return 'StoreRegionCountry(iso2: ${_this.iso2}, iso3: ${_this.iso3}, name: ${_this.name}, displayName: ${_this.displayName}, numCode: ${_this.numCode})';
}


}

/// @nodoc
abstract mixin class $StoreRegionCountryCopyWith<$Res>  {
  factory $StoreRegionCountryCopyWith(StoreRegionCountry value, $Res Function(StoreRegionCountry) _then) = _$StoreRegionCountryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'iso_2') String iso2,@JsonKey(name: 'iso_3') String? iso3, String? name, String? displayName, String? numCode
});




}
/// @nodoc
class _$StoreRegionCountryCopyWithImpl<$Res>
    implements $StoreRegionCountryCopyWith<$Res> {
  _$StoreRegionCountryCopyWithImpl(this._self, this._then);

  final StoreRegionCountry _self;
  final $Res Function(StoreRegionCountry) _then;

/// Create a copy of StoreRegionCountry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iso2 = null,Object? iso3 = freezed,Object? name = freezed,Object? displayName = freezed,Object? numCode = freezed,}) {
  return _then(StoreRegionCountry(
iso2: null == iso2 ? _self.iso2 : iso2 // ignore: cast_nullable_to_non_nullable
as String,iso3: freezed == iso3 ? _self.iso3 : iso3 // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,numCode: freezed == numCode ? _self.numCode : numCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreRegionCountry].
extension StoreRegionCountryPatterns on StoreRegionCountry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreRegionCountry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreRegionCountry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreRegionCountry value)  $default,){
final _that = this;
switch (_that) {
case _StoreRegionCountry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreRegionCountry value)?  $default,){
final _that = this;
switch (_that) {
case _StoreRegionCountry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'iso_2')  String iso2, @JsonKey(name: 'iso_3')  String? iso3,  String? name,  String? displayName,  String? numCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreRegionCountry() when $default != null:
return $default(_that.iso2,_that.iso3,_that.name,_that.displayName,_that.numCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'iso_2')  String iso2, @JsonKey(name: 'iso_3')  String? iso3,  String? name,  String? displayName,  String? numCode)  $default,) {final _that = this;
switch (_that) {
case _StoreRegionCountry():
return $default(_that.iso2,_that.iso3,_that.name,_that.displayName,_that.numCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'iso_2')  String iso2, @JsonKey(name: 'iso_3')  String? iso3,  String? name,  String? displayName,  String? numCode)?  $default,) {final _that = this;
switch (_that) {
case _StoreRegionCountry() when $default != null:
return $default(_that.iso2,_that.iso3,_that.name,_that.displayName,_that.numCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreRegionCountry implements StoreRegionCountry {
  const _StoreRegionCountry({@JsonKey(name: 'iso_2') required this.iso2, @JsonKey(name: 'iso_3') this.iso3, this.name, this.displayName, this.numCode});
  factory _StoreRegionCountry.fromJson(Map<String, dynamic> json) => _$StoreRegionCountryFromJson(json);

@override@JsonKey(name: 'iso_2') final  String iso2;
@override@JsonKey(name: 'iso_3') final  String? iso3;
@override final  String? name;
@override final  String? displayName;
@override final  String? numCode;

/// Create a copy of StoreRegionCountry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreRegionCountryCopyWith<_StoreRegionCountry> get copyWith => __$StoreRegionCountryCopyWithImpl<_StoreRegionCountry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreRegionCountryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreRegionCountry&&(identical(other.iso2, iso2) || other.iso2 == iso2)&&(identical(other.iso3, iso3) || other.iso3 == iso3)&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.numCode, numCode) || other.numCode == numCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,iso2,iso3,name,displayName,numCode);
}

@override
String toString() {
    return 'StoreRegionCountry(iso2: $iso2, iso3: $iso3, name: $name, displayName: $displayName, numCode: $numCode)';
}


}

/// @nodoc
abstract mixin class _$StoreRegionCountryCopyWith<$Res> implements $StoreRegionCountryCopyWith<$Res> {
  factory _$StoreRegionCountryCopyWith(_StoreRegionCountry value, $Res Function(_StoreRegionCountry) _then) = __$StoreRegionCountryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'iso_2') String iso2,@JsonKey(name: 'iso_3') String? iso3, String? name, String? displayName, String? numCode
});




}
/// @nodoc
class __$StoreRegionCountryCopyWithImpl<$Res>
    implements _$StoreRegionCountryCopyWith<$Res> {
  __$StoreRegionCountryCopyWithImpl(this._self, this._then);

  final _StoreRegionCountry _self;
  final $Res Function(_StoreRegionCountry) _then;

/// Create a copy of StoreRegionCountry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iso2 = null,Object? iso3 = freezed,Object? name = freezed,Object? displayName = freezed,Object? numCode = freezed,}) {
  return _then(_StoreRegionCountry(
iso2: null == iso2 ? _self.iso2 : iso2 // ignore: cast_nullable_to_non_nullable
as String,iso3: freezed == iso3 ? _self.iso3 : iso3 // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,numCode: freezed == numCode ? _self.numCode : numCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
