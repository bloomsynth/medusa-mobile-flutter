// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreProduct {

 String get id; String get title; String? get subtitle; String? get description; String? get handle; String? get thumbnail; String? get collectionId; String? get material; String? get originCountry; num? get weight; num? get length; num? get width; num? get height; StoreProductType? get type; StoreCollection? get collection; List<StoreProductImage> get images; List<StoreProductOption> get options; List<StoreProductVariant> get variants; List<StoreProductCategory> get categories;
/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductCopyWith<StoreProduct> get copyWith => _$StoreProductCopyWithImpl<StoreProduct>(this as StoreProduct, _$identity);

  /// Serializes this StoreProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProduct;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProduct&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.handle, _this.handle) || other.handle == _this.handle)&&(identical(other.thumbnail, _this.thumbnail) || other.thumbnail == _this.thumbnail)&&(identical(other.collectionId, _this.collectionId) || other.collectionId == _this.collectionId)&&(identical(other.material, _this.material) || other.material == _this.material)&&(identical(other.originCountry, _this.originCountry) || other.originCountry == _this.originCountry)&&(identical(other.weight, _this.weight) || other.weight == _this.weight)&&(identical(other.length, _this.length) || other.length == _this.length)&&(identical(other.width, _this.width) || other.width == _this.width)&&(identical(other.height, _this.height) || other.height == _this.height)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.collection, _this.collection) || other.collection == _this.collection)&&const DeepCollectionEquality().equals(other.images, _this.images)&&const DeepCollectionEquality().equals(other.options, _this.options)&&const DeepCollectionEquality().equals(other.variants, _this.variants)&&const DeepCollectionEquality().equals(other.categories, _this.categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProduct;
  return Object.hashAll([runtimeType,_this.id,_this.title,_this.subtitle,_this.description,_this.handle,_this.thumbnail,_this.collectionId,_this.material,_this.originCountry,_this.weight,_this.length,_this.width,_this.height,_this.type,_this.collection,const DeepCollectionEquality().hash(_this.images),const DeepCollectionEquality().hash(_this.options),const DeepCollectionEquality().hash(_this.variants),const DeepCollectionEquality().hash(_this.categories)]);
}

@override
String toString() {
  final _this = this as StoreProduct;
  return 'StoreProduct(id: ${_this.id}, title: ${_this.title}, subtitle: ${_this.subtitle}, description: ${_this.description}, handle: ${_this.handle}, thumbnail: ${_this.thumbnail}, collectionId: ${_this.collectionId}, material: ${_this.material}, originCountry: ${_this.originCountry}, weight: ${_this.weight}, length: ${_this.length}, width: ${_this.width}, height: ${_this.height}, type: ${_this.type}, collection: ${_this.collection}, images: ${_this.images}, options: ${_this.options}, variants: ${_this.variants}, categories: ${_this.categories})';
}


}

/// @nodoc
abstract mixin class $StoreProductCopyWith<$Res>  {
  factory $StoreProductCopyWith(StoreProduct value, $Res Function(StoreProduct) _then) = _$StoreProductCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? subtitle, String? description, String? handle, String? thumbnail, String? collectionId, String? material, String? originCountry, num? weight, num? length, num? width, num? height, StoreProductType? type, StoreCollection? collection, List<StoreProductImage> images, List<StoreProductOption> options, List<StoreProductVariant> variants, List<StoreProductCategory> categories
});


$StoreProductTypeCopyWith<$Res>? get type;$StoreCollectionCopyWith<$Res>? get collection;

}
/// @nodoc
class _$StoreProductCopyWithImpl<$Res>
    implements $StoreProductCopyWith<$Res> {
  _$StoreProductCopyWithImpl(this._self, this._then);

  final StoreProduct _self;
  final $Res Function(StoreProduct) _then;

/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? description = freezed,Object? handle = freezed,Object? thumbnail = freezed,Object? collectionId = freezed,Object? material = freezed,Object? originCountry = freezed,Object? weight = freezed,Object? length = freezed,Object? width = freezed,Object? height = freezed,Object? type = freezed,Object? collection = freezed,Object? images = null,Object? options = null,Object? variants = null,Object? categories = null,}) {
  return _then(StoreProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,handle: freezed == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as num?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as num?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as num?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as num?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreProductType?,collection: freezed == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as StoreCollection?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<StoreProductImage>,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<StoreProductOption>,variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<StoreProductVariant>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<StoreProductCategory>,
  ));
}
/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreProductTypeCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $StoreProductTypeCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCollectionCopyWith<$Res>? get collection {
    if (_self.collection == null) {
    return null;
  }

  return $StoreCollectionCopyWith<$Res>(_self.collection!, (value) {
    return _then(_self.copyWith(collection: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreProduct].
extension StoreProductPatterns on StoreProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProduct value)  $default,){
final _that = this;
switch (_that) {
case _StoreProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProduct value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  String? description,  String? handle,  String? thumbnail,  String? collectionId,  String? material,  String? originCountry,  num? weight,  num? length,  num? width,  num? height,  StoreProductType? type,  StoreCollection? collection,  List<StoreProductImage> images,  List<StoreProductOption> options,  List<StoreProductVariant> variants,  List<StoreProductCategory> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProduct() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.description,_that.handle,_that.thumbnail,_that.collectionId,_that.material,_that.originCountry,_that.weight,_that.length,_that.width,_that.height,_that.type,_that.collection,_that.images,_that.options,_that.variants,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  String? description,  String? handle,  String? thumbnail,  String? collectionId,  String? material,  String? originCountry,  num? weight,  num? length,  num? width,  num? height,  StoreProductType? type,  StoreCollection? collection,  List<StoreProductImage> images,  List<StoreProductOption> options,  List<StoreProductVariant> variants,  List<StoreProductCategory> categories)  $default,) {final _that = this;
switch (_that) {
case _StoreProduct():
return $default(_that.id,_that.title,_that.subtitle,_that.description,_that.handle,_that.thumbnail,_that.collectionId,_that.material,_that.originCountry,_that.weight,_that.length,_that.width,_that.height,_that.type,_that.collection,_that.images,_that.options,_that.variants,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? subtitle,  String? description,  String? handle,  String? thumbnail,  String? collectionId,  String? material,  String? originCountry,  num? weight,  num? length,  num? width,  num? height,  StoreProductType? type,  StoreCollection? collection,  List<StoreProductImage> images,  List<StoreProductOption> options,  List<StoreProductVariant> variants,  List<StoreProductCategory> categories)?  $default,) {final _that = this;
switch (_that) {
case _StoreProduct() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.description,_that.handle,_that.thumbnail,_that.collectionId,_that.material,_that.originCountry,_that.weight,_that.length,_that.width,_that.height,_that.type,_that.collection,_that.images,_that.options,_that.variants,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProduct implements StoreProduct {
  const _StoreProduct({required this.id, required this.title, this.subtitle, this.description, this.handle, this.thumbnail, this.collectionId, this.material, this.originCountry, this.weight, this.length, this.width, this.height, this.type, this.collection,  List<StoreProductImage> images = const [],  List<StoreProductOption> options = const [],  List<StoreProductVariant> variants = const [],  List<StoreProductCategory> categories = const []}): _images = images,_options = options,_variants = variants,_categories = categories;
  factory _StoreProduct.fromJson(Map<String, dynamic> json) => _$StoreProductFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? subtitle;
@override final  String? description;
@override final  String? handle;
@override final  String? thumbnail;
@override final  String? collectionId;
@override final  String? material;
@override final  String? originCountry;
@override final  num? weight;
@override final  num? length;
@override final  num? width;
@override final  num? height;
@override final  StoreProductType? type;
@override final  StoreCollection? collection;
 final  List<StoreProductImage> _images;
@override@JsonKey() List<StoreProductImage> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<StoreProductOption> _options;
@override@JsonKey() List<StoreProductOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<StoreProductVariant> _variants;
@override@JsonKey() List<StoreProductVariant> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}

 final  List<StoreProductCategory> _categories;
@override@JsonKey() List<StoreProductCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductCopyWith<_StoreProduct> get copyWith => __$StoreProductCopyWithImpl<_StoreProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.handle, handle) || other.handle == handle)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.material, material) || other.material == material)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.length, length) || other.length == length)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.type, type) || other.type == type)&&(identical(other.collection, collection) || other.collection == collection)&&const DeepCollectionEquality().equals(other.images, _images)&&const DeepCollectionEquality().equals(other.options, _options)&&const DeepCollectionEquality().equals(other.variants, _variants)&&const DeepCollectionEquality().equals(other.categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,title,subtitle,description,handle,thumbnail,collectionId,material,originCountry,weight,length,width,height,type,collection,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_variants),const DeepCollectionEquality().hash(_categories)]);
}

@override
String toString() {
    return 'StoreProduct(id: $id, title: $title, subtitle: $subtitle, description: $description, handle: $handle, thumbnail: $thumbnail, collectionId: $collectionId, material: $material, originCountry: $originCountry, weight: $weight, length: $length, width: $width, height: $height, type: $type, collection: $collection, images: $images, options: $options, variants: $variants, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$StoreProductCopyWith<$Res> implements $StoreProductCopyWith<$Res> {
  factory _$StoreProductCopyWith(_StoreProduct value, $Res Function(_StoreProduct) _then) = __$StoreProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? subtitle, String? description, String? handle, String? thumbnail, String? collectionId, String? material, String? originCountry, num? weight, num? length, num? width, num? height, StoreProductType? type, StoreCollection? collection, List<StoreProductImage> images, List<StoreProductOption> options, List<StoreProductVariant> variants, List<StoreProductCategory> categories
});


@override $StoreProductTypeCopyWith<$Res>? get type;@override $StoreCollectionCopyWith<$Res>? get collection;

}
/// @nodoc
class __$StoreProductCopyWithImpl<$Res>
    implements _$StoreProductCopyWith<$Res> {
  __$StoreProductCopyWithImpl(this._self, this._then);

  final _StoreProduct _self;
  final $Res Function(_StoreProduct) _then;

/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? description = freezed,Object? handle = freezed,Object? thumbnail = freezed,Object? collectionId = freezed,Object? material = freezed,Object? originCountry = freezed,Object? weight = freezed,Object? length = freezed,Object? width = freezed,Object? height = freezed,Object? type = freezed,Object? collection = freezed,Object? images = null,Object? options = null,Object? variants = null,Object? categories = null,}) {
  return _then(_StoreProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,handle: freezed == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as num?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as num?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as num?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as num?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StoreProductType?,collection: freezed == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as StoreCollection?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<StoreProductImage>,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<StoreProductOption>,variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<StoreProductVariant>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<StoreProductCategory>,
  ));
}

/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreProductTypeCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $StoreProductTypeCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}/// Create a copy of StoreProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCollectionCopyWith<$Res>? get collection {
    if (_self.collection == null) {
    return null;
  }

  return $StoreCollectionCopyWith<$Res>(_self.collection!, (value) {
    return _then(_self.copyWith(collection: value));
  });
}
}


/// @nodoc
mixin _$StoreProductImage {

 String get id; String get url;
/// Create a copy of StoreProductImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductImageCopyWith<StoreProductImage> get copyWith => _$StoreProductImageCopyWithImpl<StoreProductImage>(this as StoreProductImage, _$identity);

  /// Serializes this StoreProductImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProductImage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProductImage&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.url, _this.url) || other.url == _this.url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProductImage;
  return Object.hash(runtimeType,_this.id,_this.url);
}

@override
String toString() {
  final _this = this as StoreProductImage;
  return 'StoreProductImage(id: ${_this.id}, url: ${_this.url})';
}


}

/// @nodoc
abstract mixin class $StoreProductImageCopyWith<$Res>  {
  factory $StoreProductImageCopyWith(StoreProductImage value, $Res Function(StoreProductImage) _then) = _$StoreProductImageCopyWithImpl;
@useResult
$Res call({
 String id, String url
});




}
/// @nodoc
class _$StoreProductImageCopyWithImpl<$Res>
    implements $StoreProductImageCopyWith<$Res> {
  _$StoreProductImageCopyWithImpl(this._self, this._then);

  final StoreProductImage _self;
  final $Res Function(StoreProductImage) _then;

/// Create a copy of StoreProductImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,}) {
  return _then(StoreProductImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreProductImage].
extension StoreProductImagePatterns on StoreProductImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProductImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProductImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProductImage value)  $default,){
final _that = this;
switch (_that) {
case _StoreProductImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProductImage value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProductImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProductImage() when $default != null:
return $default(_that.id,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url)  $default,) {final _that = this;
switch (_that) {
case _StoreProductImage():
return $default(_that.id,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url)?  $default,) {final _that = this;
switch (_that) {
case _StoreProductImage() when $default != null:
return $default(_that.id,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProductImage implements StoreProductImage {
  const _StoreProductImage({required this.id, required this.url});
  factory _StoreProductImage.fromJson(Map<String, dynamic> json) => _$StoreProductImageFromJson(json);

@override final  String id;
@override final  String url;

/// Create a copy of StoreProductImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductImageCopyWith<_StoreProductImage> get copyWith => __$StoreProductImageCopyWithImpl<_StoreProductImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductImageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProductImage&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,url);
}

@override
String toString() {
    return 'StoreProductImage(id: $id, url: $url)';
}


}

/// @nodoc
abstract mixin class _$StoreProductImageCopyWith<$Res> implements $StoreProductImageCopyWith<$Res> {
  factory _$StoreProductImageCopyWith(_StoreProductImage value, $Res Function(_StoreProductImage) _then) = __$StoreProductImageCopyWithImpl;
@override @useResult
$Res call({
 String id, String url
});




}
/// @nodoc
class __$StoreProductImageCopyWithImpl<$Res>
    implements _$StoreProductImageCopyWith<$Res> {
  __$StoreProductImageCopyWithImpl(this._self, this._then);

  final _StoreProductImage _self;
  final $Res Function(_StoreProductImage) _then;

/// Create a copy of StoreProductImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,}) {
  return _then(_StoreProductImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StoreProductType {

 String get id; String get value;
/// Create a copy of StoreProductType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductTypeCopyWith<StoreProductType> get copyWith => _$StoreProductTypeCopyWithImpl<StoreProductType>(this as StoreProductType, _$identity);

  /// Serializes this StoreProductType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProductType;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProductType&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProductType;
  return Object.hash(runtimeType,_this.id,_this.value);
}

@override
String toString() {
  final _this = this as StoreProductType;
  return 'StoreProductType(id: ${_this.id}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $StoreProductTypeCopyWith<$Res>  {
  factory $StoreProductTypeCopyWith(StoreProductType value, $Res Function(StoreProductType) _then) = _$StoreProductTypeCopyWithImpl;
@useResult
$Res call({
 String id, String value
});




}
/// @nodoc
class _$StoreProductTypeCopyWithImpl<$Res>
    implements $StoreProductTypeCopyWith<$Res> {
  _$StoreProductTypeCopyWithImpl(this._self, this._then);

  final StoreProductType _self;
  final $Res Function(StoreProductType) _then;

/// Create a copy of StoreProductType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,}) {
  return _then(StoreProductType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreProductType].
extension StoreProductTypePatterns on StoreProductType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProductType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProductType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProductType value)  $default,){
final _that = this;
switch (_that) {
case _StoreProductType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProductType value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProductType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProductType() when $default != null:
return $default(_that.id,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String value)  $default,) {final _that = this;
switch (_that) {
case _StoreProductType():
return $default(_that.id,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String value)?  $default,) {final _that = this;
switch (_that) {
case _StoreProductType() when $default != null:
return $default(_that.id,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProductType implements StoreProductType {
  const _StoreProductType({required this.id, required this.value});
  factory _StoreProductType.fromJson(Map<String, dynamic> json) => _$StoreProductTypeFromJson(json);

@override final  String id;
@override final  String value;

/// Create a copy of StoreProductType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductTypeCopyWith<_StoreProductType> get copyWith => __$StoreProductTypeCopyWithImpl<_StoreProductType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductTypeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProductType&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,value);
}

@override
String toString() {
    return 'StoreProductType(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class _$StoreProductTypeCopyWith<$Res> implements $StoreProductTypeCopyWith<$Res> {
  factory _$StoreProductTypeCopyWith(_StoreProductType value, $Res Function(_StoreProductType) _then) = __$StoreProductTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String value
});




}
/// @nodoc
class __$StoreProductTypeCopyWithImpl<$Res>
    implements _$StoreProductTypeCopyWith<$Res> {
  __$StoreProductTypeCopyWithImpl(this._self, this._then);

  final _StoreProductType _self;
  final $Res Function(_StoreProductType) _then;

/// Create a copy of StoreProductType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,}) {
  return _then(_StoreProductType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StoreProductOption {

 String get id; String get title; List<StoreProductOptionValue> get values;
/// Create a copy of StoreProductOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductOptionCopyWith<StoreProductOption> get copyWith => _$StoreProductOptionCopyWithImpl<StoreProductOption>(this as StoreProductOption, _$identity);

  /// Serializes this StoreProductOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProductOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProductOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&const DeepCollectionEquality().equals(other.values, _this.values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProductOption;
  return Object.hash(runtimeType,_this.id,_this.title,const DeepCollectionEquality().hash(_this.values));
}

@override
String toString() {
  final _this = this as StoreProductOption;
  return 'StoreProductOption(id: ${_this.id}, title: ${_this.title}, values: ${_this.values})';
}


}

/// @nodoc
abstract mixin class $StoreProductOptionCopyWith<$Res>  {
  factory $StoreProductOptionCopyWith(StoreProductOption value, $Res Function(StoreProductOption) _then) = _$StoreProductOptionCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<StoreProductOptionValue> values
});




}
/// @nodoc
class _$StoreProductOptionCopyWithImpl<$Res>
    implements $StoreProductOptionCopyWith<$Res> {
  _$StoreProductOptionCopyWithImpl(this._self, this._then);

  final StoreProductOption _self;
  final $Res Function(StoreProductOption) _then;

/// Create a copy of StoreProductOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? values = null,}) {
  return _then(StoreProductOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<StoreProductOptionValue>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreProductOption].
extension StoreProductOptionPatterns on StoreProductOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProductOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProductOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProductOption value)  $default,){
final _that = this;
switch (_that) {
case _StoreProductOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProductOption value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProductOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<StoreProductOptionValue> values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProductOption() when $default != null:
return $default(_that.id,_that.title,_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<StoreProductOptionValue> values)  $default,) {final _that = this;
switch (_that) {
case _StoreProductOption():
return $default(_that.id,_that.title,_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<StoreProductOptionValue> values)?  $default,) {final _that = this;
switch (_that) {
case _StoreProductOption() when $default != null:
return $default(_that.id,_that.title,_that.values);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProductOption implements StoreProductOption {
  const _StoreProductOption({required this.id, required this.title,  List<StoreProductOptionValue> values = const []}): _values = values;
  factory _StoreProductOption.fromJson(Map<String, dynamic> json) => _$StoreProductOptionFromJson(json);

@override final  String id;
@override final  String title;
 final  List<StoreProductOptionValue> _values;
@override@JsonKey() List<StoreProductOptionValue> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of StoreProductOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductOptionCopyWith<_StoreProductOption> get copyWith => __$StoreProductOptionCopyWithImpl<_StoreProductOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProductOption&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_values));
}

@override
String toString() {
    return 'StoreProductOption(id: $id, title: $title, values: $values)';
}


}

/// @nodoc
abstract mixin class _$StoreProductOptionCopyWith<$Res> implements $StoreProductOptionCopyWith<$Res> {
  factory _$StoreProductOptionCopyWith(_StoreProductOption value, $Res Function(_StoreProductOption) _then) = __$StoreProductOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<StoreProductOptionValue> values
});




}
/// @nodoc
class __$StoreProductOptionCopyWithImpl<$Res>
    implements _$StoreProductOptionCopyWith<$Res> {
  __$StoreProductOptionCopyWithImpl(this._self, this._then);

  final _StoreProductOption _self;
  final $Res Function(_StoreProductOption) _then;

/// Create a copy of StoreProductOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? values = null,}) {
  return _then(_StoreProductOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<StoreProductOptionValue>,
  ));
}


}


/// @nodoc
mixin _$StoreProductOptionValue {

 String get id; String get value; String? get optionId;
/// Create a copy of StoreProductOptionValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductOptionValueCopyWith<StoreProductOptionValue> get copyWith => _$StoreProductOptionValueCopyWithImpl<StoreProductOptionValue>(this as StoreProductOptionValue, _$identity);

  /// Serializes this StoreProductOptionValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProductOptionValue;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProductOptionValue&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.optionId, _this.optionId) || other.optionId == _this.optionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProductOptionValue;
  return Object.hash(runtimeType,_this.id,_this.value,_this.optionId);
}

@override
String toString() {
  final _this = this as StoreProductOptionValue;
  return 'StoreProductOptionValue(id: ${_this.id}, value: ${_this.value}, optionId: ${_this.optionId})';
}


}

/// @nodoc
abstract mixin class $StoreProductOptionValueCopyWith<$Res>  {
  factory $StoreProductOptionValueCopyWith(StoreProductOptionValue value, $Res Function(StoreProductOptionValue) _then) = _$StoreProductOptionValueCopyWithImpl;
@useResult
$Res call({
 String id, String value, String? optionId
});




}
/// @nodoc
class _$StoreProductOptionValueCopyWithImpl<$Res>
    implements $StoreProductOptionValueCopyWith<$Res> {
  _$StoreProductOptionValueCopyWithImpl(this._self, this._then);

  final StoreProductOptionValue _self;
  final $Res Function(StoreProductOptionValue) _then;

/// Create a copy of StoreProductOptionValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,Object? optionId = freezed,}) {
  return _then(StoreProductOptionValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreProductOptionValue].
extension StoreProductOptionValuePatterns on StoreProductOptionValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProductOptionValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProductOptionValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProductOptionValue value)  $default,){
final _that = this;
switch (_that) {
case _StoreProductOptionValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProductOptionValue value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProductOptionValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String value,  String? optionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProductOptionValue() when $default != null:
return $default(_that.id,_that.value,_that.optionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String value,  String? optionId)  $default,) {final _that = this;
switch (_that) {
case _StoreProductOptionValue():
return $default(_that.id,_that.value,_that.optionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String value,  String? optionId)?  $default,) {final _that = this;
switch (_that) {
case _StoreProductOptionValue() when $default != null:
return $default(_that.id,_that.value,_that.optionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProductOptionValue implements StoreProductOptionValue {
  const _StoreProductOptionValue({required this.id, required this.value, this.optionId});
  factory _StoreProductOptionValue.fromJson(Map<String, dynamic> json) => _$StoreProductOptionValueFromJson(json);

@override final  String id;
@override final  String value;
@override final  String? optionId;

/// Create a copy of StoreProductOptionValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductOptionValueCopyWith<_StoreProductOptionValue> get copyWith => __$StoreProductOptionValueCopyWithImpl<_StoreProductOptionValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductOptionValueToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProductOptionValue&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.optionId, optionId) || other.optionId == optionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,value,optionId);
}

@override
String toString() {
    return 'StoreProductOptionValue(id: $id, value: $value, optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class _$StoreProductOptionValueCopyWith<$Res> implements $StoreProductOptionValueCopyWith<$Res> {
  factory _$StoreProductOptionValueCopyWith(_StoreProductOptionValue value, $Res Function(_StoreProductOptionValue) _then) = __$StoreProductOptionValueCopyWithImpl;
@override @useResult
$Res call({
 String id, String value, String? optionId
});




}
/// @nodoc
class __$StoreProductOptionValueCopyWithImpl<$Res>
    implements _$StoreProductOptionValueCopyWith<$Res> {
  __$StoreProductOptionValueCopyWithImpl(this._self, this._then);

  final _StoreProductOptionValue _self;
  final $Res Function(_StoreProductOptionValue) _then;

/// Create a copy of StoreProductOptionValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? optionId = freezed,}) {
  return _then(_StoreProductOptionValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StoreProductVariant {

 String get id; String? get title; String? get sku; bool get manageInventory; bool get allowBackorder; num? get inventoryQuantity; List<StoreProductOptionValue> get options; StoreCalculatedPrice? get calculatedPrice;
/// Create a copy of StoreProductVariant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductVariantCopyWith<StoreProductVariant> get copyWith => _$StoreProductVariantCopyWithImpl<StoreProductVariant>(this as StoreProductVariant, _$identity);

  /// Serializes this StoreProductVariant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProductVariant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProductVariant&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.sku, _this.sku) || other.sku == _this.sku)&&(identical(other.manageInventory, _this.manageInventory) || other.manageInventory == _this.manageInventory)&&(identical(other.allowBackorder, _this.allowBackorder) || other.allowBackorder == _this.allowBackorder)&&(identical(other.inventoryQuantity, _this.inventoryQuantity) || other.inventoryQuantity == _this.inventoryQuantity)&&const DeepCollectionEquality().equals(other.options, _this.options)&&(identical(other.calculatedPrice, _this.calculatedPrice) || other.calculatedPrice == _this.calculatedPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProductVariant;
  return Object.hash(runtimeType,_this.id,_this.title,_this.sku,_this.manageInventory,_this.allowBackorder,_this.inventoryQuantity,const DeepCollectionEquality().hash(_this.options),_this.calculatedPrice);
}

@override
String toString() {
  final _this = this as StoreProductVariant;
  return 'StoreProductVariant(id: ${_this.id}, title: ${_this.title}, sku: ${_this.sku}, manageInventory: ${_this.manageInventory}, allowBackorder: ${_this.allowBackorder}, inventoryQuantity: ${_this.inventoryQuantity}, options: ${_this.options}, calculatedPrice: ${_this.calculatedPrice})';
}


}

/// @nodoc
abstract mixin class $StoreProductVariantCopyWith<$Res>  {
  factory $StoreProductVariantCopyWith(StoreProductVariant value, $Res Function(StoreProductVariant) _then) = _$StoreProductVariantCopyWithImpl;
@useResult
$Res call({
 String id, String? title, String? sku, bool manageInventory, bool allowBackorder, num? inventoryQuantity, List<StoreProductOptionValue> options, StoreCalculatedPrice? calculatedPrice
});


$StoreCalculatedPriceCopyWith<$Res>? get calculatedPrice;

}
/// @nodoc
class _$StoreProductVariantCopyWithImpl<$Res>
    implements $StoreProductVariantCopyWith<$Res> {
  _$StoreProductVariantCopyWithImpl(this._self, this._then);

  final StoreProductVariant _self;
  final $Res Function(StoreProductVariant) _then;

/// Create a copy of StoreProductVariant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? sku = freezed,Object? manageInventory = null,Object? allowBackorder = null,Object? inventoryQuantity = freezed,Object? options = null,Object? calculatedPrice = freezed,}) {
  return _then(StoreProductVariant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,manageInventory: null == manageInventory ? _self.manageInventory : manageInventory // ignore: cast_nullable_to_non_nullable
as bool,allowBackorder: null == allowBackorder ? _self.allowBackorder : allowBackorder // ignore: cast_nullable_to_non_nullable
as bool,inventoryQuantity: freezed == inventoryQuantity ? _self.inventoryQuantity : inventoryQuantity // ignore: cast_nullable_to_non_nullable
as num?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<StoreProductOptionValue>,calculatedPrice: freezed == calculatedPrice ? _self.calculatedPrice : calculatedPrice // ignore: cast_nullable_to_non_nullable
as StoreCalculatedPrice?,
  ));
}
/// Create a copy of StoreProductVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCalculatedPriceCopyWith<$Res>? get calculatedPrice {
    if (_self.calculatedPrice == null) {
    return null;
  }

  return $StoreCalculatedPriceCopyWith<$Res>(_self.calculatedPrice!, (value) {
    return _then(_self.copyWith(calculatedPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreProductVariant].
extension StoreProductVariantPatterns on StoreProductVariant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProductVariant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProductVariant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProductVariant value)  $default,){
final _that = this;
switch (_that) {
case _StoreProductVariant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProductVariant value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProductVariant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? title,  String? sku,  bool manageInventory,  bool allowBackorder,  num? inventoryQuantity,  List<StoreProductOptionValue> options,  StoreCalculatedPrice? calculatedPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProductVariant() when $default != null:
return $default(_that.id,_that.title,_that.sku,_that.manageInventory,_that.allowBackorder,_that.inventoryQuantity,_that.options,_that.calculatedPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? title,  String? sku,  bool manageInventory,  bool allowBackorder,  num? inventoryQuantity,  List<StoreProductOptionValue> options,  StoreCalculatedPrice? calculatedPrice)  $default,) {final _that = this;
switch (_that) {
case _StoreProductVariant():
return $default(_that.id,_that.title,_that.sku,_that.manageInventory,_that.allowBackorder,_that.inventoryQuantity,_that.options,_that.calculatedPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? title,  String? sku,  bool manageInventory,  bool allowBackorder,  num? inventoryQuantity,  List<StoreProductOptionValue> options,  StoreCalculatedPrice? calculatedPrice)?  $default,) {final _that = this;
switch (_that) {
case _StoreProductVariant() when $default != null:
return $default(_that.id,_that.title,_that.sku,_that.manageInventory,_that.allowBackorder,_that.inventoryQuantity,_that.options,_that.calculatedPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProductVariant extends StoreProductVariant {
  const _StoreProductVariant({required this.id, this.title, this.sku, this.manageInventory = false, this.allowBackorder = false, this.inventoryQuantity,  List<StoreProductOptionValue> options = const [], this.calculatedPrice}): _options = options,super._();
  factory _StoreProductVariant.fromJson(Map<String, dynamic> json) => _$StoreProductVariantFromJson(json);

@override final  String id;
@override final  String? title;
@override final  String? sku;
@override@JsonKey() final  bool manageInventory;
@override@JsonKey() final  bool allowBackorder;
@override final  num? inventoryQuantity;
 final  List<StoreProductOptionValue> _options;
@override@JsonKey() List<StoreProductOptionValue> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  StoreCalculatedPrice? calculatedPrice;

/// Create a copy of StoreProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductVariantCopyWith<_StoreProductVariant> get copyWith => __$StoreProductVariantCopyWithImpl<_StoreProductVariant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductVariantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProductVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.manageInventory, manageInventory) || other.manageInventory == manageInventory)&&(identical(other.allowBackorder, allowBackorder) || other.allowBackorder == allowBackorder)&&(identical(other.inventoryQuantity, inventoryQuantity) || other.inventoryQuantity == inventoryQuantity)&&const DeepCollectionEquality().equals(other.options, _options)&&(identical(other.calculatedPrice, calculatedPrice) || other.calculatedPrice == calculatedPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,sku,manageInventory,allowBackorder,inventoryQuantity,const DeepCollectionEquality().hash(_options),calculatedPrice);
}

@override
String toString() {
    return 'StoreProductVariant(id: $id, title: $title, sku: $sku, manageInventory: $manageInventory, allowBackorder: $allowBackorder, inventoryQuantity: $inventoryQuantity, options: $options, calculatedPrice: $calculatedPrice)';
}


}

/// @nodoc
abstract mixin class _$StoreProductVariantCopyWith<$Res> implements $StoreProductVariantCopyWith<$Res> {
  factory _$StoreProductVariantCopyWith(_StoreProductVariant value, $Res Function(_StoreProductVariant) _then) = __$StoreProductVariantCopyWithImpl;
@override @useResult
$Res call({
 String id, String? title, String? sku, bool manageInventory, bool allowBackorder, num? inventoryQuantity, List<StoreProductOptionValue> options, StoreCalculatedPrice? calculatedPrice
});


@override $StoreCalculatedPriceCopyWith<$Res>? get calculatedPrice;

}
/// @nodoc
class __$StoreProductVariantCopyWithImpl<$Res>
    implements _$StoreProductVariantCopyWith<$Res> {
  __$StoreProductVariantCopyWithImpl(this._self, this._then);

  final _StoreProductVariant _self;
  final $Res Function(_StoreProductVariant) _then;

/// Create a copy of StoreProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? sku = freezed,Object? manageInventory = null,Object? allowBackorder = null,Object? inventoryQuantity = freezed,Object? options = null,Object? calculatedPrice = freezed,}) {
  return _then(_StoreProductVariant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,manageInventory: null == manageInventory ? _self.manageInventory : manageInventory // ignore: cast_nullable_to_non_nullable
as bool,allowBackorder: null == allowBackorder ? _self.allowBackorder : allowBackorder // ignore: cast_nullable_to_non_nullable
as bool,inventoryQuantity: freezed == inventoryQuantity ? _self.inventoryQuantity : inventoryQuantity // ignore: cast_nullable_to_non_nullable
as num?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<StoreProductOptionValue>,calculatedPrice: freezed == calculatedPrice ? _self.calculatedPrice : calculatedPrice // ignore: cast_nullable_to_non_nullable
as StoreCalculatedPrice?,
  ));
}

/// Create a copy of StoreProductVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCalculatedPriceCopyWith<$Res>? get calculatedPrice {
    if (_self.calculatedPrice == null) {
    return null;
  }

  return $StoreCalculatedPriceCopyWith<$Res>(_self.calculatedPrice!, (value) {
    return _then(_self.copyWith(calculatedPrice: value));
  });
}
}


/// @nodoc
mixin _$StoreCalculatedPrice {

 String? get id; num? get calculatedAmount; num? get originalAmount; String? get currencyCode;@JsonKey(name: 'calculated_price') StorePriceDetails? get calculatedPrice;@JsonKey(name: 'original_price') StorePriceDetails? get originalPrice;
/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCalculatedPriceCopyWith<StoreCalculatedPrice> get copyWith => _$StoreCalculatedPriceCopyWithImpl<StoreCalculatedPrice>(this as StoreCalculatedPrice, _$identity);

  /// Serializes this StoreCalculatedPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCalculatedPrice;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCalculatedPrice&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.calculatedAmount, _this.calculatedAmount) || other.calculatedAmount == _this.calculatedAmount)&&(identical(other.originalAmount, _this.originalAmount) || other.originalAmount == _this.originalAmount)&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode)&&(identical(other.calculatedPrice, _this.calculatedPrice) || other.calculatedPrice == _this.calculatedPrice)&&(identical(other.originalPrice, _this.originalPrice) || other.originalPrice == _this.originalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCalculatedPrice;
  return Object.hash(runtimeType,_this.id,_this.calculatedAmount,_this.originalAmount,_this.currencyCode,_this.calculatedPrice,_this.originalPrice);
}

@override
String toString() {
  final _this = this as StoreCalculatedPrice;
  return 'StoreCalculatedPrice(id: ${_this.id}, calculatedAmount: ${_this.calculatedAmount}, originalAmount: ${_this.originalAmount}, currencyCode: ${_this.currencyCode}, calculatedPrice: ${_this.calculatedPrice}, originalPrice: ${_this.originalPrice})';
}


}

/// @nodoc
abstract mixin class $StoreCalculatedPriceCopyWith<$Res>  {
  factory $StoreCalculatedPriceCopyWith(StoreCalculatedPrice value, $Res Function(StoreCalculatedPrice) _then) = _$StoreCalculatedPriceCopyWithImpl;
@useResult
$Res call({
 String? id, num? calculatedAmount, num? originalAmount, String? currencyCode,@JsonKey(name: 'calculated_price') StorePriceDetails? calculatedPrice,@JsonKey(name: 'original_price') StorePriceDetails? originalPrice
});


$StorePriceDetailsCopyWith<$Res>? get calculatedPrice;$StorePriceDetailsCopyWith<$Res>? get originalPrice;

}
/// @nodoc
class _$StoreCalculatedPriceCopyWithImpl<$Res>
    implements $StoreCalculatedPriceCopyWith<$Res> {
  _$StoreCalculatedPriceCopyWithImpl(this._self, this._then);

  final StoreCalculatedPrice _self;
  final $Res Function(StoreCalculatedPrice) _then;

/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? calculatedAmount = freezed,Object? originalAmount = freezed,Object? currencyCode = freezed,Object? calculatedPrice = freezed,Object? originalPrice = freezed,}) {
  return _then(StoreCalculatedPrice(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,calculatedAmount: freezed == calculatedAmount ? _self.calculatedAmount : calculatedAmount // ignore: cast_nullable_to_non_nullable
as num?,originalAmount: freezed == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as num?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,calculatedPrice: freezed == calculatedPrice ? _self.calculatedPrice : calculatedPrice // ignore: cast_nullable_to_non_nullable
as StorePriceDetails?,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as StorePriceDetails?,
  ));
}
/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorePriceDetailsCopyWith<$Res>? get calculatedPrice {
    if (_self.calculatedPrice == null) {
    return null;
  }

  return $StorePriceDetailsCopyWith<$Res>(_self.calculatedPrice!, (value) {
    return _then(_self.copyWith(calculatedPrice: value));
  });
}/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorePriceDetailsCopyWith<$Res>? get originalPrice {
    if (_self.originalPrice == null) {
    return null;
  }

  return $StorePriceDetailsCopyWith<$Res>(_self.originalPrice!, (value) {
    return _then(_self.copyWith(originalPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreCalculatedPrice].
extension StoreCalculatedPricePatterns on StoreCalculatedPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCalculatedPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCalculatedPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCalculatedPrice value)  $default,){
final _that = this;
switch (_that) {
case _StoreCalculatedPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCalculatedPrice value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCalculatedPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  num? calculatedAmount,  num? originalAmount,  String? currencyCode, @JsonKey(name: 'calculated_price')  StorePriceDetails? calculatedPrice, @JsonKey(name: 'original_price')  StorePriceDetails? originalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCalculatedPrice() when $default != null:
return $default(_that.id,_that.calculatedAmount,_that.originalAmount,_that.currencyCode,_that.calculatedPrice,_that.originalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  num? calculatedAmount,  num? originalAmount,  String? currencyCode, @JsonKey(name: 'calculated_price')  StorePriceDetails? calculatedPrice, @JsonKey(name: 'original_price')  StorePriceDetails? originalPrice)  $default,) {final _that = this;
switch (_that) {
case _StoreCalculatedPrice():
return $default(_that.id,_that.calculatedAmount,_that.originalAmount,_that.currencyCode,_that.calculatedPrice,_that.originalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  num? calculatedAmount,  num? originalAmount,  String? currencyCode, @JsonKey(name: 'calculated_price')  StorePriceDetails? calculatedPrice, @JsonKey(name: 'original_price')  StorePriceDetails? originalPrice)?  $default,) {final _that = this;
switch (_that) {
case _StoreCalculatedPrice() when $default != null:
return $default(_that.id,_that.calculatedAmount,_that.originalAmount,_that.currencyCode,_that.calculatedPrice,_that.originalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCalculatedPrice implements StoreCalculatedPrice {
  const _StoreCalculatedPrice({this.id, this.calculatedAmount, this.originalAmount, this.currencyCode, @JsonKey(name: 'calculated_price') this.calculatedPrice, @JsonKey(name: 'original_price') this.originalPrice});
  factory _StoreCalculatedPrice.fromJson(Map<String, dynamic> json) => _$StoreCalculatedPriceFromJson(json);

@override final  String? id;
@override final  num? calculatedAmount;
@override final  num? originalAmount;
@override final  String? currencyCode;
@override@JsonKey(name: 'calculated_price') final  StorePriceDetails? calculatedPrice;
@override@JsonKey(name: 'original_price') final  StorePriceDetails? originalPrice;

/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCalculatedPriceCopyWith<_StoreCalculatedPrice> get copyWith => __$StoreCalculatedPriceCopyWithImpl<_StoreCalculatedPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCalculatedPriceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCalculatedPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.calculatedAmount, calculatedAmount) || other.calculatedAmount == calculatedAmount)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.calculatedPrice, calculatedPrice) || other.calculatedPrice == calculatedPrice)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,calculatedAmount,originalAmount,currencyCode,calculatedPrice,originalPrice);
}

@override
String toString() {
    return 'StoreCalculatedPrice(id: $id, calculatedAmount: $calculatedAmount, originalAmount: $originalAmount, currencyCode: $currencyCode, calculatedPrice: $calculatedPrice, originalPrice: $originalPrice)';
}


}

/// @nodoc
abstract mixin class _$StoreCalculatedPriceCopyWith<$Res> implements $StoreCalculatedPriceCopyWith<$Res> {
  factory _$StoreCalculatedPriceCopyWith(_StoreCalculatedPrice value, $Res Function(_StoreCalculatedPrice) _then) = __$StoreCalculatedPriceCopyWithImpl;
@override @useResult
$Res call({
 String? id, num? calculatedAmount, num? originalAmount, String? currencyCode,@JsonKey(name: 'calculated_price') StorePriceDetails? calculatedPrice,@JsonKey(name: 'original_price') StorePriceDetails? originalPrice
});


@override $StorePriceDetailsCopyWith<$Res>? get calculatedPrice;@override $StorePriceDetailsCopyWith<$Res>? get originalPrice;

}
/// @nodoc
class __$StoreCalculatedPriceCopyWithImpl<$Res>
    implements _$StoreCalculatedPriceCopyWith<$Res> {
  __$StoreCalculatedPriceCopyWithImpl(this._self, this._then);

  final _StoreCalculatedPrice _self;
  final $Res Function(_StoreCalculatedPrice) _then;

/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? calculatedAmount = freezed,Object? originalAmount = freezed,Object? currencyCode = freezed,Object? calculatedPrice = freezed,Object? originalPrice = freezed,}) {
  return _then(_StoreCalculatedPrice(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,calculatedAmount: freezed == calculatedAmount ? _self.calculatedAmount : calculatedAmount // ignore: cast_nullable_to_non_nullable
as num?,originalAmount: freezed == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as num?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,calculatedPrice: freezed == calculatedPrice ? _self.calculatedPrice : calculatedPrice // ignore: cast_nullable_to_non_nullable
as StorePriceDetails?,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as StorePriceDetails?,
  ));
}

/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorePriceDetailsCopyWith<$Res>? get calculatedPrice {
    if (_self.calculatedPrice == null) {
    return null;
  }

  return $StorePriceDetailsCopyWith<$Res>(_self.calculatedPrice!, (value) {
    return _then(_self.copyWith(calculatedPrice: value));
  });
}/// Create a copy of StoreCalculatedPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorePriceDetailsCopyWith<$Res>? get originalPrice {
    if (_self.originalPrice == null) {
    return null;
  }

  return $StorePriceDetailsCopyWith<$Res>(_self.originalPrice!, (value) {
    return _then(_self.copyWith(originalPrice: value));
  });
}
}


/// @nodoc
mixin _$StorePriceDetails {

 String? get id; String? get priceListId; String? get priceListType; num? get minQuantity; num? get maxQuantity;
/// Create a copy of StorePriceDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorePriceDetailsCopyWith<StorePriceDetails> get copyWith => _$StorePriceDetailsCopyWithImpl<StorePriceDetails>(this as StorePriceDetails, _$identity);

  /// Serializes this StorePriceDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StorePriceDetails;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorePriceDetails&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.priceListId, _this.priceListId) || other.priceListId == _this.priceListId)&&(identical(other.priceListType, _this.priceListType) || other.priceListType == _this.priceListType)&&(identical(other.minQuantity, _this.minQuantity) || other.minQuantity == _this.minQuantity)&&(identical(other.maxQuantity, _this.maxQuantity) || other.maxQuantity == _this.maxQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StorePriceDetails;
  return Object.hash(runtimeType,_this.id,_this.priceListId,_this.priceListType,_this.minQuantity,_this.maxQuantity);
}

@override
String toString() {
  final _this = this as StorePriceDetails;
  return 'StorePriceDetails(id: ${_this.id}, priceListId: ${_this.priceListId}, priceListType: ${_this.priceListType}, minQuantity: ${_this.minQuantity}, maxQuantity: ${_this.maxQuantity})';
}


}

/// @nodoc
abstract mixin class $StorePriceDetailsCopyWith<$Res>  {
  factory $StorePriceDetailsCopyWith(StorePriceDetails value, $Res Function(StorePriceDetails) _then) = _$StorePriceDetailsCopyWithImpl;
@useResult
$Res call({
 String? id, String? priceListId, String? priceListType, num? minQuantity, num? maxQuantity
});




}
/// @nodoc
class _$StorePriceDetailsCopyWithImpl<$Res>
    implements $StorePriceDetailsCopyWith<$Res> {
  _$StorePriceDetailsCopyWithImpl(this._self, this._then);

  final StorePriceDetails _self;
  final $Res Function(StorePriceDetails) _then;

/// Create a copy of StorePriceDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? priceListId = freezed,Object? priceListType = freezed,Object? minQuantity = freezed,Object? maxQuantity = freezed,}) {
  return _then(StorePriceDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,priceListId: freezed == priceListId ? _self.priceListId : priceListId // ignore: cast_nullable_to_non_nullable
as String?,priceListType: freezed == priceListType ? _self.priceListType : priceListType // ignore: cast_nullable_to_non_nullable
as String?,minQuantity: freezed == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as num?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [StorePriceDetails].
extension StorePriceDetailsPatterns on StorePriceDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorePriceDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorePriceDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorePriceDetails value)  $default,){
final _that = this;
switch (_that) {
case _StorePriceDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorePriceDetails value)?  $default,){
final _that = this;
switch (_that) {
case _StorePriceDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? priceListId,  String? priceListType,  num? minQuantity,  num? maxQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorePriceDetails() when $default != null:
return $default(_that.id,_that.priceListId,_that.priceListType,_that.minQuantity,_that.maxQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? priceListId,  String? priceListType,  num? minQuantity,  num? maxQuantity)  $default,) {final _that = this;
switch (_that) {
case _StorePriceDetails():
return $default(_that.id,_that.priceListId,_that.priceListType,_that.minQuantity,_that.maxQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? priceListId,  String? priceListType,  num? minQuantity,  num? maxQuantity)?  $default,) {final _that = this;
switch (_that) {
case _StorePriceDetails() when $default != null:
return $default(_that.id,_that.priceListId,_that.priceListType,_that.minQuantity,_that.maxQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorePriceDetails implements StorePriceDetails {
  const _StorePriceDetails({this.id, this.priceListId, this.priceListType, this.minQuantity, this.maxQuantity});
  factory _StorePriceDetails.fromJson(Map<String, dynamic> json) => _$StorePriceDetailsFromJson(json);

@override final  String? id;
@override final  String? priceListId;
@override final  String? priceListType;
@override final  num? minQuantity;
@override final  num? maxQuantity;

/// Create a copy of StorePriceDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorePriceDetailsCopyWith<_StorePriceDetails> get copyWith => __$StorePriceDetailsCopyWithImpl<_StorePriceDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorePriceDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorePriceDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.priceListId, priceListId) || other.priceListId == priceListId)&&(identical(other.priceListType, priceListType) || other.priceListType == priceListType)&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,priceListId,priceListType,minQuantity,maxQuantity);
}

@override
String toString() {
    return 'StorePriceDetails(id: $id, priceListId: $priceListId, priceListType: $priceListType, minQuantity: $minQuantity, maxQuantity: $maxQuantity)';
}


}

/// @nodoc
abstract mixin class _$StorePriceDetailsCopyWith<$Res> implements $StorePriceDetailsCopyWith<$Res> {
  factory _$StorePriceDetailsCopyWith(_StorePriceDetails value, $Res Function(_StorePriceDetails) _then) = __$StorePriceDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? priceListId, String? priceListType, num? minQuantity, num? maxQuantity
});




}
/// @nodoc
class __$StorePriceDetailsCopyWithImpl<$Res>
    implements _$StorePriceDetailsCopyWith<$Res> {
  __$StorePriceDetailsCopyWithImpl(this._self, this._then);

  final _StorePriceDetails _self;
  final $Res Function(_StorePriceDetails) _then;

/// Create a copy of StorePriceDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? priceListId = freezed,Object? priceListType = freezed,Object? minQuantity = freezed,Object? maxQuantity = freezed,}) {
  return _then(_StorePriceDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,priceListId: freezed == priceListId ? _self.priceListId : priceListId // ignore: cast_nullable_to_non_nullable
as String?,priceListType: freezed == priceListType ? _self.priceListType : priceListType // ignore: cast_nullable_to_non_nullable
as String?,minQuantity: freezed == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as num?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$StoreProductCategory {

 String get id; String get name; String? get description; String? get handle; String? get parentCategoryId;
/// Create a copy of StoreProductCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreProductCategoryCopyWith<StoreProductCategory> get copyWith => _$StoreProductCategoryCopyWithImpl<StoreProductCategory>(this as StoreProductCategory, _$identity);

  /// Serializes this StoreProductCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreProductCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreProductCategory&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.handle, _this.handle) || other.handle == _this.handle)&&(identical(other.parentCategoryId, _this.parentCategoryId) || other.parentCategoryId == _this.parentCategoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreProductCategory;
  return Object.hash(runtimeType,_this.id,_this.name,_this.description,_this.handle,_this.parentCategoryId);
}

@override
String toString() {
  final _this = this as StoreProductCategory;
  return 'StoreProductCategory(id: ${_this.id}, name: ${_this.name}, description: ${_this.description}, handle: ${_this.handle}, parentCategoryId: ${_this.parentCategoryId})';
}


}

/// @nodoc
abstract mixin class $StoreProductCategoryCopyWith<$Res>  {
  factory $StoreProductCategoryCopyWith(StoreProductCategory value, $Res Function(StoreProductCategory) _then) = _$StoreProductCategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String? handle, String? parentCategoryId
});




}
/// @nodoc
class _$StoreProductCategoryCopyWithImpl<$Res>
    implements $StoreProductCategoryCopyWith<$Res> {
  _$StoreProductCategoryCopyWithImpl(this._self, this._then);

  final StoreProductCategory _self;
  final $Res Function(StoreProductCategory) _then;

/// Create a copy of StoreProductCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? handle = freezed,Object? parentCategoryId = freezed,}) {
  return _then(StoreProductCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,handle: freezed == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String?,parentCategoryId: freezed == parentCategoryId ? _self.parentCategoryId : parentCategoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreProductCategory].
extension StoreProductCategoryPatterns on StoreProductCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreProductCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreProductCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreProductCategory value)  $default,){
final _that = this;
switch (_that) {
case _StoreProductCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreProductCategory value)?  $default,){
final _that = this;
switch (_that) {
case _StoreProductCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String? handle,  String? parentCategoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreProductCategory() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.handle,_that.parentCategoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String? handle,  String? parentCategoryId)  $default,) {final _that = this;
switch (_that) {
case _StoreProductCategory():
return $default(_that.id,_that.name,_that.description,_that.handle,_that.parentCategoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  String? handle,  String? parentCategoryId)?  $default,) {final _that = this;
switch (_that) {
case _StoreProductCategory() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.handle,_that.parentCategoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreProductCategory implements StoreProductCategory {
  const _StoreProductCategory({required this.id, required this.name, this.description, this.handle, this.parentCategoryId});
  factory _StoreProductCategory.fromJson(Map<String, dynamic> json) => _$StoreProductCategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String? handle;
@override final  String? parentCategoryId;

/// Create a copy of StoreProductCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreProductCategoryCopyWith<_StoreProductCategory> get copyWith => __$StoreProductCategoryCopyWithImpl<_StoreProductCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreProductCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreProductCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.handle, handle) || other.handle == handle)&&(identical(other.parentCategoryId, parentCategoryId) || other.parentCategoryId == parentCategoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,description,handle,parentCategoryId);
}

@override
String toString() {
    return 'StoreProductCategory(id: $id, name: $name, description: $description, handle: $handle, parentCategoryId: $parentCategoryId)';
}


}

/// @nodoc
abstract mixin class _$StoreProductCategoryCopyWith<$Res> implements $StoreProductCategoryCopyWith<$Res> {
  factory _$StoreProductCategoryCopyWith(_StoreProductCategory value, $Res Function(_StoreProductCategory) _then) = __$StoreProductCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String? handle, String? parentCategoryId
});




}
/// @nodoc
class __$StoreProductCategoryCopyWithImpl<$Res>
    implements _$StoreProductCategoryCopyWith<$Res> {
  __$StoreProductCategoryCopyWithImpl(this._self, this._then);

  final _StoreProductCategory _self;
  final $Res Function(_StoreProductCategory) _then;

/// Create a copy of StoreProductCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? handle = freezed,Object? parentCategoryId = freezed,}) {
  return _then(_StoreProductCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,handle: freezed == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String?,parentCategoryId: freezed == parentCategoryId ? _self.parentCategoryId : parentCategoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StoreCollection {

 String get id; String get title; String? get handle;
/// Create a copy of StoreCollection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCollectionCopyWith<StoreCollection> get copyWith => _$StoreCollectionCopyWithImpl<StoreCollection>(this as StoreCollection, _$identity);

  /// Serializes this StoreCollection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCollection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCollection&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.handle, _this.handle) || other.handle == _this.handle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCollection;
  return Object.hash(runtimeType,_this.id,_this.title,_this.handle);
}

@override
String toString() {
  final _this = this as StoreCollection;
  return 'StoreCollection(id: ${_this.id}, title: ${_this.title}, handle: ${_this.handle})';
}


}

/// @nodoc
abstract mixin class $StoreCollectionCopyWith<$Res>  {
  factory $StoreCollectionCopyWith(StoreCollection value, $Res Function(StoreCollection) _then) = _$StoreCollectionCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? handle
});




}
/// @nodoc
class _$StoreCollectionCopyWithImpl<$Res>
    implements $StoreCollectionCopyWith<$Res> {
  _$StoreCollectionCopyWithImpl(this._self, this._then);

  final StoreCollection _self;
  final $Res Function(StoreCollection) _then;

/// Create a copy of StoreCollection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? handle = freezed,}) {
  return _then(StoreCollection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,handle: freezed == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCollection].
extension StoreCollectionPatterns on StoreCollection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCollection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCollection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCollection value)  $default,){
final _that = this;
switch (_that) {
case _StoreCollection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCollection value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCollection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? handle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCollection() when $default != null:
return $default(_that.id,_that.title,_that.handle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? handle)  $default,) {final _that = this;
switch (_that) {
case _StoreCollection():
return $default(_that.id,_that.title,_that.handle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? handle)?  $default,) {final _that = this;
switch (_that) {
case _StoreCollection() when $default != null:
return $default(_that.id,_that.title,_that.handle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCollection implements StoreCollection {
  const _StoreCollection({required this.id, required this.title, this.handle});
  factory _StoreCollection.fromJson(Map<String, dynamic> json) => _$StoreCollectionFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? handle;

/// Create a copy of StoreCollection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCollectionCopyWith<_StoreCollection> get copyWith => __$StoreCollectionCopyWithImpl<_StoreCollection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCollectionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCollection&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.handle, handle) || other.handle == handle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,handle);
}

@override
String toString() {
    return 'StoreCollection(id: $id, title: $title, handle: $handle)';
}


}

/// @nodoc
abstract mixin class _$StoreCollectionCopyWith<$Res> implements $StoreCollectionCopyWith<$Res> {
  factory _$StoreCollectionCopyWith(_StoreCollection value, $Res Function(_StoreCollection) _then) = __$StoreCollectionCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? handle
});




}
/// @nodoc
class __$StoreCollectionCopyWithImpl<$Res>
    implements _$StoreCollectionCopyWith<$Res> {
  __$StoreCollectionCopyWithImpl(this._self, this._then);

  final _StoreCollection _self;
  final $Res Function(_StoreCollection) _then;

/// Create a copy of StoreCollection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? handle = freezed,}) {
  return _then(_StoreCollection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,handle: freezed == handle ? _self.handle : handle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
