// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreCart {

 String get id; String get currencyCode; String? get regionId; String? get customerId; String? get email; List<StoreCartLineItem> get items; StoreAddress? get shippingAddress; StoreAddress? get billingAddress; List<StoreCartShippingMethod> get shippingMethods; List<StorePromotion> get promotions; StorePaymentCollection? get paymentCollection; num get total; num get subtotal; num get itemSubtotal; num get shippingTotal; num get taxTotal; num get discountTotal;
/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCartCopyWith<StoreCart> get copyWith => _$StoreCartCopyWithImpl<StoreCart>(this as StoreCart, _$identity);

  /// Serializes this StoreCart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCart;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCart&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode)&&(identical(other.regionId, _this.regionId) || other.regionId == _this.regionId)&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&(identical(other.email, _this.email) || other.email == _this.email)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.shippingAddress, _this.shippingAddress) || other.shippingAddress == _this.shippingAddress)&&(identical(other.billingAddress, _this.billingAddress) || other.billingAddress == _this.billingAddress)&&const DeepCollectionEquality().equals(other.shippingMethods, _this.shippingMethods)&&const DeepCollectionEquality().equals(other.promotions, _this.promotions)&&(identical(other.paymentCollection, _this.paymentCollection) || other.paymentCollection == _this.paymentCollection)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.itemSubtotal, _this.itemSubtotal) || other.itemSubtotal == _this.itemSubtotal)&&(identical(other.shippingTotal, _this.shippingTotal) || other.shippingTotal == _this.shippingTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCart;
  return Object.hash(runtimeType,_this.id,_this.currencyCode,_this.regionId,_this.customerId,_this.email,const DeepCollectionEquality().hash(_this.items),_this.shippingAddress,_this.billingAddress,const DeepCollectionEquality().hash(_this.shippingMethods),const DeepCollectionEquality().hash(_this.promotions),_this.paymentCollection,_this.total,_this.subtotal,_this.itemSubtotal,_this.shippingTotal,_this.taxTotal,_this.discountTotal);
}

@override
String toString() {
  final _this = this as StoreCart;
  return 'StoreCart(id: ${_this.id}, currencyCode: ${_this.currencyCode}, regionId: ${_this.regionId}, customerId: ${_this.customerId}, email: ${_this.email}, items: ${_this.items}, shippingAddress: ${_this.shippingAddress}, billingAddress: ${_this.billingAddress}, shippingMethods: ${_this.shippingMethods}, promotions: ${_this.promotions}, paymentCollection: ${_this.paymentCollection}, total: ${_this.total}, subtotal: ${_this.subtotal}, itemSubtotal: ${_this.itemSubtotal}, shippingTotal: ${_this.shippingTotal}, taxTotal: ${_this.taxTotal}, discountTotal: ${_this.discountTotal})';
}


}

/// @nodoc
abstract mixin class $StoreCartCopyWith<$Res>  {
  factory $StoreCartCopyWith(StoreCart value, $Res Function(StoreCart) _then) = _$StoreCartCopyWithImpl;
@useResult
$Res call({
 String id, String currencyCode, String? regionId, String? customerId, String? email, List<StoreCartLineItem> items, StoreAddress? shippingAddress, StoreAddress? billingAddress, List<StoreCartShippingMethod> shippingMethods, List<StorePromotion> promotions, StorePaymentCollection? paymentCollection, num total, num subtotal, num itemSubtotal, num shippingTotal, num taxTotal, num discountTotal
});


$StoreAddressCopyWith<$Res>? get shippingAddress;$StoreAddressCopyWith<$Res>? get billingAddress;$StorePaymentCollectionCopyWith<$Res>? get paymentCollection;

}
/// @nodoc
class _$StoreCartCopyWithImpl<$Res>
    implements $StoreCartCopyWith<$Res> {
  _$StoreCartCopyWithImpl(this._self, this._then);

  final StoreCart _self;
  final $Res Function(StoreCart) _then;

/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currencyCode = null,Object? regionId = freezed,Object? customerId = freezed,Object? email = freezed,Object? items = null,Object? shippingAddress = freezed,Object? billingAddress = freezed,Object? shippingMethods = null,Object? promotions = null,Object? paymentCollection = freezed,Object? total = null,Object? subtotal = null,Object? itemSubtotal = null,Object? shippingTotal = null,Object? taxTotal = null,Object? discountTotal = null,}) {
  return _then(StoreCart(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<StoreCartLineItem>,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,shippingMethods: null == shippingMethods ? _self.shippingMethods : shippingMethods // ignore: cast_nullable_to_non_nullable
as List<StoreCartShippingMethod>,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<StorePromotion>,paymentCollection: freezed == paymentCollection ? _self.paymentCollection : paymentCollection // ignore: cast_nullable_to_non_nullable
as StorePaymentCollection?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num,itemSubtotal: null == itemSubtotal ? _self.itemSubtotal : itemSubtotal // ignore: cast_nullable_to_non_nullable
as num,shippingTotal: null == shippingTotal ? _self.shippingTotal : shippingTotal // ignore: cast_nullable_to_non_nullable
as num,taxTotal: null == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as num,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as num,
  ));
}
/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreAddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
    return null;
  }

  return $StoreAddressCopyWith<$Res>(_self.shippingAddress!, (value) {
    return _then(_self.copyWith(shippingAddress: value));
  });
}/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreAddressCopyWith<$Res>? get billingAddress {
    if (_self.billingAddress == null) {
    return null;
  }

  return $StoreAddressCopyWith<$Res>(_self.billingAddress!, (value) {
    return _then(_self.copyWith(billingAddress: value));
  });
}/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorePaymentCollectionCopyWith<$Res>? get paymentCollection {
    if (_self.paymentCollection == null) {
    return null;
  }

  return $StorePaymentCollectionCopyWith<$Res>(_self.paymentCollection!, (value) {
    return _then(_self.copyWith(paymentCollection: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreCart].
extension StoreCartPatterns on StoreCart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCart value)  $default,){
final _that = this;
switch (_that) {
case _StoreCart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCart value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String currencyCode,  String? regionId,  String? customerId,  String? email,  List<StoreCartLineItem> items,  StoreAddress? shippingAddress,  StoreAddress? billingAddress,  List<StoreCartShippingMethod> shippingMethods,  List<StorePromotion> promotions,  StorePaymentCollection? paymentCollection,  num total,  num subtotal,  num itemSubtotal,  num shippingTotal,  num taxTotal,  num discountTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCart() when $default != null:
return $default(_that.id,_that.currencyCode,_that.regionId,_that.customerId,_that.email,_that.items,_that.shippingAddress,_that.billingAddress,_that.shippingMethods,_that.promotions,_that.paymentCollection,_that.total,_that.subtotal,_that.itemSubtotal,_that.shippingTotal,_that.taxTotal,_that.discountTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String currencyCode,  String? regionId,  String? customerId,  String? email,  List<StoreCartLineItem> items,  StoreAddress? shippingAddress,  StoreAddress? billingAddress,  List<StoreCartShippingMethod> shippingMethods,  List<StorePromotion> promotions,  StorePaymentCollection? paymentCollection,  num total,  num subtotal,  num itemSubtotal,  num shippingTotal,  num taxTotal,  num discountTotal)  $default,) {final _that = this;
switch (_that) {
case _StoreCart():
return $default(_that.id,_that.currencyCode,_that.regionId,_that.customerId,_that.email,_that.items,_that.shippingAddress,_that.billingAddress,_that.shippingMethods,_that.promotions,_that.paymentCollection,_that.total,_that.subtotal,_that.itemSubtotal,_that.shippingTotal,_that.taxTotal,_that.discountTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String currencyCode,  String? regionId,  String? customerId,  String? email,  List<StoreCartLineItem> items,  StoreAddress? shippingAddress,  StoreAddress? billingAddress,  List<StoreCartShippingMethod> shippingMethods,  List<StorePromotion> promotions,  StorePaymentCollection? paymentCollection,  num total,  num subtotal,  num itemSubtotal,  num shippingTotal,  num taxTotal,  num discountTotal)?  $default,) {final _that = this;
switch (_that) {
case _StoreCart() when $default != null:
return $default(_that.id,_that.currencyCode,_that.regionId,_that.customerId,_that.email,_that.items,_that.shippingAddress,_that.billingAddress,_that.shippingMethods,_that.promotions,_that.paymentCollection,_that.total,_that.subtotal,_that.itemSubtotal,_that.shippingTotal,_that.taxTotal,_that.discountTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCart extends StoreCart {
  const _StoreCart({required this.id, required this.currencyCode, this.regionId, this.customerId, this.email,  List<StoreCartLineItem> items = const [], this.shippingAddress, this.billingAddress,  List<StoreCartShippingMethod> shippingMethods = const [],  List<StorePromotion> promotions = const [], this.paymentCollection, this.total = 0, this.subtotal = 0, this.itemSubtotal = 0, this.shippingTotal = 0, this.taxTotal = 0, this.discountTotal = 0}): _items = items,_shippingMethods = shippingMethods,_promotions = promotions,super._();
  factory _StoreCart.fromJson(Map<String, dynamic> json) => _$StoreCartFromJson(json);

@override final  String id;
@override final  String currencyCode;
@override final  String? regionId;
@override final  String? customerId;
@override final  String? email;
 final  List<StoreCartLineItem> _items;
@override@JsonKey() List<StoreCartLineItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  StoreAddress? shippingAddress;
@override final  StoreAddress? billingAddress;
 final  List<StoreCartShippingMethod> _shippingMethods;
@override@JsonKey() List<StoreCartShippingMethod> get shippingMethods {
  if (_shippingMethods is EqualUnmodifiableListView) return _shippingMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shippingMethods);
}

 final  List<StorePromotion> _promotions;
@override@JsonKey() List<StorePromotion> get promotions {
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotions);
}

@override final  StorePaymentCollection? paymentCollection;
@override@JsonKey() final  num total;
@override@JsonKey() final  num subtotal;
@override@JsonKey() final  num itemSubtotal;
@override@JsonKey() final  num shippingTotal;
@override@JsonKey() final  num taxTotal;
@override@JsonKey() final  num discountTotal;

/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCartCopyWith<_StoreCart> get copyWith => __$StoreCartCopyWithImpl<_StoreCart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCartToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCart&&(identical(other.id, id) || other.id == id)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.billingAddress, billingAddress) || other.billingAddress == billingAddress)&&const DeepCollectionEquality().equals(other.shippingMethods, _shippingMethods)&&const DeepCollectionEquality().equals(other.promotions, _promotions)&&(identical(other.paymentCollection, paymentCollection) || other.paymentCollection == paymentCollection)&&(identical(other.total, total) || other.total == total)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.itemSubtotal, itemSubtotal) || other.itemSubtotal == itemSubtotal)&&(identical(other.shippingTotal, shippingTotal) || other.shippingTotal == shippingTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,currencyCode,regionId,customerId,email,const DeepCollectionEquality().hash(_items),shippingAddress,billingAddress,const DeepCollectionEquality().hash(_shippingMethods),const DeepCollectionEquality().hash(_promotions),paymentCollection,total,subtotal,itemSubtotal,shippingTotal,taxTotal,discountTotal);
}

@override
String toString() {
    return 'StoreCart(id: $id, currencyCode: $currencyCode, regionId: $regionId, customerId: $customerId, email: $email, items: $items, shippingAddress: $shippingAddress, billingAddress: $billingAddress, shippingMethods: $shippingMethods, promotions: $promotions, paymentCollection: $paymentCollection, total: $total, subtotal: $subtotal, itemSubtotal: $itemSubtotal, shippingTotal: $shippingTotal, taxTotal: $taxTotal, discountTotal: $discountTotal)';
}


}

/// @nodoc
abstract mixin class _$StoreCartCopyWith<$Res> implements $StoreCartCopyWith<$Res> {
  factory _$StoreCartCopyWith(_StoreCart value, $Res Function(_StoreCart) _then) = __$StoreCartCopyWithImpl;
@override @useResult
$Res call({
 String id, String currencyCode, String? regionId, String? customerId, String? email, List<StoreCartLineItem> items, StoreAddress? shippingAddress, StoreAddress? billingAddress, List<StoreCartShippingMethod> shippingMethods, List<StorePromotion> promotions, StorePaymentCollection? paymentCollection, num total, num subtotal, num itemSubtotal, num shippingTotal, num taxTotal, num discountTotal
});


@override $StoreAddressCopyWith<$Res>? get shippingAddress;@override $StoreAddressCopyWith<$Res>? get billingAddress;@override $StorePaymentCollectionCopyWith<$Res>? get paymentCollection;

}
/// @nodoc
class __$StoreCartCopyWithImpl<$Res>
    implements _$StoreCartCopyWith<$Res> {
  __$StoreCartCopyWithImpl(this._self, this._then);

  final _StoreCart _self;
  final $Res Function(_StoreCart) _then;

/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currencyCode = null,Object? regionId = freezed,Object? customerId = freezed,Object? email = freezed,Object? items = null,Object? shippingAddress = freezed,Object? billingAddress = freezed,Object? shippingMethods = null,Object? promotions = null,Object? paymentCollection = freezed,Object? total = null,Object? subtotal = null,Object? itemSubtotal = null,Object? shippingTotal = null,Object? taxTotal = null,Object? discountTotal = null,}) {
  return _then(_StoreCart(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StoreCartLineItem>,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,shippingMethods: null == shippingMethods ? _self._shippingMethods : shippingMethods // ignore: cast_nullable_to_non_nullable
as List<StoreCartShippingMethod>,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<StorePromotion>,paymentCollection: freezed == paymentCollection ? _self.paymentCollection : paymentCollection // ignore: cast_nullable_to_non_nullable
as StorePaymentCollection?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num,itemSubtotal: null == itemSubtotal ? _self.itemSubtotal : itemSubtotal // ignore: cast_nullable_to_non_nullable
as num,shippingTotal: null == shippingTotal ? _self.shippingTotal : shippingTotal // ignore: cast_nullable_to_non_nullable
as num,taxTotal: null == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as num,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreAddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
    return null;
  }

  return $StoreAddressCopyWith<$Res>(_self.shippingAddress!, (value) {
    return _then(_self.copyWith(shippingAddress: value));
  });
}/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreAddressCopyWith<$Res>? get billingAddress {
    if (_self.billingAddress == null) {
    return null;
  }

  return $StoreAddressCopyWith<$Res>(_self.billingAddress!, (value) {
    return _then(_self.copyWith(billingAddress: value));
  });
}/// Create a copy of StoreCart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorePaymentCollectionCopyWith<$Res>? get paymentCollection {
    if (_self.paymentCollection == null) {
    return null;
  }

  return $StorePaymentCollectionCopyWith<$Res>(_self.paymentCollection!, (value) {
    return _then(_self.copyWith(paymentCollection: value));
  });
}
}


/// @nodoc
mixin _$StoreCartLineItem {

 String get id; int get quantity; num get unitPrice; String? get title; String? get productTitle; String? get variantTitle; String? get thumbnail; String? get productId; String? get variantId; num? get total; num? get originalTotal; DateTime? get createdAt;
/// Create a copy of StoreCartLineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCartLineItemCopyWith<StoreCartLineItem> get copyWith => _$StoreCartLineItemCopyWithImpl<StoreCartLineItem>(this as StoreCartLineItem, _$identity);

  /// Serializes this StoreCartLineItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCartLineItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCartLineItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unitPrice, _this.unitPrice) || other.unitPrice == _this.unitPrice)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.productTitle, _this.productTitle) || other.productTitle == _this.productTitle)&&(identical(other.variantTitle, _this.variantTitle) || other.variantTitle == _this.variantTitle)&&(identical(other.thumbnail, _this.thumbnail) || other.thumbnail == _this.thumbnail)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.originalTotal, _this.originalTotal) || other.originalTotal == _this.originalTotal)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCartLineItem;
  return Object.hash(runtimeType,_this.id,_this.quantity,_this.unitPrice,_this.title,_this.productTitle,_this.variantTitle,_this.thumbnail,_this.productId,_this.variantId,_this.total,_this.originalTotal,_this.createdAt);
}

@override
String toString() {
  final _this = this as StoreCartLineItem;
  return 'StoreCartLineItem(id: ${_this.id}, quantity: ${_this.quantity}, unitPrice: ${_this.unitPrice}, title: ${_this.title}, productTitle: ${_this.productTitle}, variantTitle: ${_this.variantTitle}, thumbnail: ${_this.thumbnail}, productId: ${_this.productId}, variantId: ${_this.variantId}, total: ${_this.total}, originalTotal: ${_this.originalTotal}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $StoreCartLineItemCopyWith<$Res>  {
  factory $StoreCartLineItemCopyWith(StoreCartLineItem value, $Res Function(StoreCartLineItem) _then) = _$StoreCartLineItemCopyWithImpl;
@useResult
$Res call({
 String id, int quantity, num unitPrice, String? title, String? productTitle, String? variantTitle, String? thumbnail, String? productId, String? variantId, num? total, num? originalTotal, DateTime? createdAt
});




}
/// @nodoc
class _$StoreCartLineItemCopyWithImpl<$Res>
    implements $StoreCartLineItemCopyWith<$Res> {
  _$StoreCartLineItemCopyWithImpl(this._self, this._then);

  final StoreCartLineItem _self;
  final $Res Function(StoreCartLineItem) _then;

/// Create a copy of StoreCartLineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quantity = null,Object? unitPrice = null,Object? title = freezed,Object? productTitle = freezed,Object? variantTitle = freezed,Object? thumbnail = freezed,Object? productId = freezed,Object? variantId = freezed,Object? total = freezed,Object? originalTotal = freezed,Object? createdAt = freezed,}) {
  return _then(StoreCartLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as num,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,productTitle: freezed == productTitle ? _self.productTitle : productTitle // ignore: cast_nullable_to_non_nullable
as String?,variantTitle: freezed == variantTitle ? _self.variantTitle : variantTitle // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,originalTotal: freezed == originalTotal ? _self.originalTotal : originalTotal // ignore: cast_nullable_to_non_nullable
as num?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCartLineItem].
extension StoreCartLineItemPatterns on StoreCartLineItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCartLineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCartLineItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCartLineItem value)  $default,){
final _that = this;
switch (_that) {
case _StoreCartLineItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCartLineItem value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCartLineItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int quantity,  num unitPrice,  String? title,  String? productTitle,  String? variantTitle,  String? thumbnail,  String? productId,  String? variantId,  num? total,  num? originalTotal,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCartLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.unitPrice,_that.title,_that.productTitle,_that.variantTitle,_that.thumbnail,_that.productId,_that.variantId,_that.total,_that.originalTotal,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int quantity,  num unitPrice,  String? title,  String? productTitle,  String? variantTitle,  String? thumbnail,  String? productId,  String? variantId,  num? total,  num? originalTotal,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _StoreCartLineItem():
return $default(_that.id,_that.quantity,_that.unitPrice,_that.title,_that.productTitle,_that.variantTitle,_that.thumbnail,_that.productId,_that.variantId,_that.total,_that.originalTotal,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int quantity,  num unitPrice,  String? title,  String? productTitle,  String? variantTitle,  String? thumbnail,  String? productId,  String? variantId,  num? total,  num? originalTotal,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StoreCartLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.unitPrice,_that.title,_that.productTitle,_that.variantTitle,_that.thumbnail,_that.productId,_that.variantId,_that.total,_that.originalTotal,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCartLineItem implements StoreCartLineItem {
  const _StoreCartLineItem({required this.id, required this.quantity, this.unitPrice = 0, this.title, this.productTitle, this.variantTitle, this.thumbnail, this.productId, this.variantId, this.total, this.originalTotal, this.createdAt});
  factory _StoreCartLineItem.fromJson(Map<String, dynamic> json) => _$StoreCartLineItemFromJson(json);

@override final  String id;
@override final  int quantity;
@override@JsonKey() final  num unitPrice;
@override final  String? title;
@override final  String? productTitle;
@override final  String? variantTitle;
@override final  String? thumbnail;
@override final  String? productId;
@override final  String? variantId;
@override final  num? total;
@override final  num? originalTotal;
@override final  DateTime? createdAt;

/// Create a copy of StoreCartLineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCartLineItemCopyWith<_StoreCartLineItem> get copyWith => __$StoreCartLineItemCopyWithImpl<_StoreCartLineItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCartLineItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCartLineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.title, title) || other.title == title)&&(identical(other.productTitle, productTitle) || other.productTitle == productTitle)&&(identical(other.variantTitle, variantTitle) || other.variantTitle == variantTitle)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.total, total) || other.total == total)&&(identical(other.originalTotal, originalTotal) || other.originalTotal == originalTotal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,quantity,unitPrice,title,productTitle,variantTitle,thumbnail,productId,variantId,total,originalTotal,createdAt);
}

@override
String toString() {
    return 'StoreCartLineItem(id: $id, quantity: $quantity, unitPrice: $unitPrice, title: $title, productTitle: $productTitle, variantTitle: $variantTitle, thumbnail: $thumbnail, productId: $productId, variantId: $variantId, total: $total, originalTotal: $originalTotal, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StoreCartLineItemCopyWith<$Res> implements $StoreCartLineItemCopyWith<$Res> {
  factory _$StoreCartLineItemCopyWith(_StoreCartLineItem value, $Res Function(_StoreCartLineItem) _then) = __$StoreCartLineItemCopyWithImpl;
@override @useResult
$Res call({
 String id, int quantity, num unitPrice, String? title, String? productTitle, String? variantTitle, String? thumbnail, String? productId, String? variantId, num? total, num? originalTotal, DateTime? createdAt
});




}
/// @nodoc
class __$StoreCartLineItemCopyWithImpl<$Res>
    implements _$StoreCartLineItemCopyWith<$Res> {
  __$StoreCartLineItemCopyWithImpl(this._self, this._then);

  final _StoreCartLineItem _self;
  final $Res Function(_StoreCartLineItem) _then;

/// Create a copy of StoreCartLineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quantity = null,Object? unitPrice = null,Object? title = freezed,Object? productTitle = freezed,Object? variantTitle = freezed,Object? thumbnail = freezed,Object? productId = freezed,Object? variantId = freezed,Object? total = freezed,Object? originalTotal = freezed,Object? createdAt = freezed,}) {
  return _then(_StoreCartLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as num,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,productTitle: freezed == productTitle ? _self.productTitle : productTitle // ignore: cast_nullable_to_non_nullable
as String?,variantTitle: freezed == variantTitle ? _self.variantTitle : variantTitle // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,originalTotal: freezed == originalTotal ? _self.originalTotal : originalTotal // ignore: cast_nullable_to_non_nullable
as num?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StoreCartShippingMethod {

 String get id; String? get shippingOptionId; String? get name; num? get amount;
/// Create a copy of StoreCartShippingMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCartShippingMethodCopyWith<StoreCartShippingMethod> get copyWith => _$StoreCartShippingMethodCopyWithImpl<StoreCartShippingMethod>(this as StoreCartShippingMethod, _$identity);

  /// Serializes this StoreCartShippingMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCartShippingMethod;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCartShippingMethod&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.shippingOptionId, _this.shippingOptionId) || other.shippingOptionId == _this.shippingOptionId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCartShippingMethod;
  return Object.hash(runtimeType,_this.id,_this.shippingOptionId,_this.name,_this.amount);
}

@override
String toString() {
  final _this = this as StoreCartShippingMethod;
  return 'StoreCartShippingMethod(id: ${_this.id}, shippingOptionId: ${_this.shippingOptionId}, name: ${_this.name}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $StoreCartShippingMethodCopyWith<$Res>  {
  factory $StoreCartShippingMethodCopyWith(StoreCartShippingMethod value, $Res Function(StoreCartShippingMethod) _then) = _$StoreCartShippingMethodCopyWithImpl;
@useResult
$Res call({
 String id, String? shippingOptionId, String? name, num? amount
});




}
/// @nodoc
class _$StoreCartShippingMethodCopyWithImpl<$Res>
    implements $StoreCartShippingMethodCopyWith<$Res> {
  _$StoreCartShippingMethodCopyWithImpl(this._self, this._then);

  final StoreCartShippingMethod _self;
  final $Res Function(StoreCartShippingMethod) _then;

/// Create a copy of StoreCartShippingMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? shippingOptionId = freezed,Object? name = freezed,Object? amount = freezed,}) {
  return _then(StoreCartShippingMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shippingOptionId: freezed == shippingOptionId ? _self.shippingOptionId : shippingOptionId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCartShippingMethod].
extension StoreCartShippingMethodPatterns on StoreCartShippingMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCartShippingMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCartShippingMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCartShippingMethod value)  $default,){
final _that = this;
switch (_that) {
case _StoreCartShippingMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCartShippingMethod value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCartShippingMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? shippingOptionId,  String? name,  num? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCartShippingMethod() when $default != null:
return $default(_that.id,_that.shippingOptionId,_that.name,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? shippingOptionId,  String? name,  num? amount)  $default,) {final _that = this;
switch (_that) {
case _StoreCartShippingMethod():
return $default(_that.id,_that.shippingOptionId,_that.name,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? shippingOptionId,  String? name,  num? amount)?  $default,) {final _that = this;
switch (_that) {
case _StoreCartShippingMethod() when $default != null:
return $default(_that.id,_that.shippingOptionId,_that.name,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCartShippingMethod implements StoreCartShippingMethod {
  const _StoreCartShippingMethod({required this.id, this.shippingOptionId, this.name, this.amount});
  factory _StoreCartShippingMethod.fromJson(Map<String, dynamic> json) => _$StoreCartShippingMethodFromJson(json);

@override final  String id;
@override final  String? shippingOptionId;
@override final  String? name;
@override final  num? amount;

/// Create a copy of StoreCartShippingMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCartShippingMethodCopyWith<_StoreCartShippingMethod> get copyWith => __$StoreCartShippingMethodCopyWithImpl<_StoreCartShippingMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCartShippingMethodToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCartShippingMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.shippingOptionId, shippingOptionId) || other.shippingOptionId == shippingOptionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,shippingOptionId,name,amount);
}

@override
String toString() {
    return 'StoreCartShippingMethod(id: $id, shippingOptionId: $shippingOptionId, name: $name, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$StoreCartShippingMethodCopyWith<$Res> implements $StoreCartShippingMethodCopyWith<$Res> {
  factory _$StoreCartShippingMethodCopyWith(_StoreCartShippingMethod value, $Res Function(_StoreCartShippingMethod) _then) = __$StoreCartShippingMethodCopyWithImpl;
@override @useResult
$Res call({
 String id, String? shippingOptionId, String? name, num? amount
});




}
/// @nodoc
class __$StoreCartShippingMethodCopyWithImpl<$Res>
    implements _$StoreCartShippingMethodCopyWith<$Res> {
  __$StoreCartShippingMethodCopyWithImpl(this._self, this._then);

  final _StoreCartShippingMethod _self;
  final $Res Function(_StoreCartShippingMethod) _then;

/// Create a copy of StoreCartShippingMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? shippingOptionId = freezed,Object? name = freezed,Object? amount = freezed,}) {
  return _then(_StoreCartShippingMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shippingOptionId: freezed == shippingOptionId ? _self.shippingOptionId : shippingOptionId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$StorePromotion {

 String get id; String? get code; bool get isAutomatic; StoreApplicationMethod? get applicationMethod;
/// Create a copy of StorePromotion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorePromotionCopyWith<StorePromotion> get copyWith => _$StorePromotionCopyWithImpl<StorePromotion>(this as StorePromotion, _$identity);

  /// Serializes this StorePromotion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StorePromotion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorePromotion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.isAutomatic, _this.isAutomatic) || other.isAutomatic == _this.isAutomatic)&&(identical(other.applicationMethod, _this.applicationMethod) || other.applicationMethod == _this.applicationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StorePromotion;
  return Object.hash(runtimeType,_this.id,_this.code,_this.isAutomatic,_this.applicationMethod);
}

@override
String toString() {
  final _this = this as StorePromotion;
  return 'StorePromotion(id: ${_this.id}, code: ${_this.code}, isAutomatic: ${_this.isAutomatic}, applicationMethod: ${_this.applicationMethod})';
}


}

/// @nodoc
abstract mixin class $StorePromotionCopyWith<$Res>  {
  factory $StorePromotionCopyWith(StorePromotion value, $Res Function(StorePromotion) _then) = _$StorePromotionCopyWithImpl;
@useResult
$Res call({
 String id, String? code, bool isAutomatic, StoreApplicationMethod? applicationMethod
});


$StoreApplicationMethodCopyWith<$Res>? get applicationMethod;

}
/// @nodoc
class _$StorePromotionCopyWithImpl<$Res>
    implements $StorePromotionCopyWith<$Res> {
  _$StorePromotionCopyWithImpl(this._self, this._then);

  final StorePromotion _self;
  final $Res Function(StorePromotion) _then;

/// Create a copy of StorePromotion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = freezed,Object? isAutomatic = null,Object? applicationMethod = freezed,}) {
  return _then(StorePromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,isAutomatic: null == isAutomatic ? _self.isAutomatic : isAutomatic // ignore: cast_nullable_to_non_nullable
as bool,applicationMethod: freezed == applicationMethod ? _self.applicationMethod : applicationMethod // ignore: cast_nullable_to_non_nullable
as StoreApplicationMethod?,
  ));
}
/// Create a copy of StorePromotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreApplicationMethodCopyWith<$Res>? get applicationMethod {
    if (_self.applicationMethod == null) {
    return null;
  }

  return $StoreApplicationMethodCopyWith<$Res>(_self.applicationMethod!, (value) {
    return _then(_self.copyWith(applicationMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [StorePromotion].
extension StorePromotionPatterns on StorePromotion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorePromotion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorePromotion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorePromotion value)  $default,){
final _that = this;
switch (_that) {
case _StorePromotion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorePromotion value)?  $default,){
final _that = this;
switch (_that) {
case _StorePromotion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? code,  bool isAutomatic,  StoreApplicationMethod? applicationMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorePromotion() when $default != null:
return $default(_that.id,_that.code,_that.isAutomatic,_that.applicationMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? code,  bool isAutomatic,  StoreApplicationMethod? applicationMethod)  $default,) {final _that = this;
switch (_that) {
case _StorePromotion():
return $default(_that.id,_that.code,_that.isAutomatic,_that.applicationMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? code,  bool isAutomatic,  StoreApplicationMethod? applicationMethod)?  $default,) {final _that = this;
switch (_that) {
case _StorePromotion() when $default != null:
return $default(_that.id,_that.code,_that.isAutomatic,_that.applicationMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorePromotion implements StorePromotion {
  const _StorePromotion({required this.id, this.code, this.isAutomatic = false, this.applicationMethod});
  factory _StorePromotion.fromJson(Map<String, dynamic> json) => _$StorePromotionFromJson(json);

@override final  String id;
@override final  String? code;
@override@JsonKey() final  bool isAutomatic;
@override final  StoreApplicationMethod? applicationMethod;

/// Create a copy of StorePromotion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorePromotionCopyWith<_StorePromotion> get copyWith => __$StorePromotionCopyWithImpl<_StorePromotion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorePromotionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorePromotion&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.isAutomatic, isAutomatic) || other.isAutomatic == isAutomatic)&&(identical(other.applicationMethod, applicationMethod) || other.applicationMethod == applicationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,code,isAutomatic,applicationMethod);
}

@override
String toString() {
    return 'StorePromotion(id: $id, code: $code, isAutomatic: $isAutomatic, applicationMethod: $applicationMethod)';
}


}

/// @nodoc
abstract mixin class _$StorePromotionCopyWith<$Res> implements $StorePromotionCopyWith<$Res> {
  factory _$StorePromotionCopyWith(_StorePromotion value, $Res Function(_StorePromotion) _then) = __$StorePromotionCopyWithImpl;
@override @useResult
$Res call({
 String id, String? code, bool isAutomatic, StoreApplicationMethod? applicationMethod
});


@override $StoreApplicationMethodCopyWith<$Res>? get applicationMethod;

}
/// @nodoc
class __$StorePromotionCopyWithImpl<$Res>
    implements _$StorePromotionCopyWith<$Res> {
  __$StorePromotionCopyWithImpl(this._self, this._then);

  final _StorePromotion _self;
  final $Res Function(_StorePromotion) _then;

/// Create a copy of StorePromotion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = freezed,Object? isAutomatic = null,Object? applicationMethod = freezed,}) {
  return _then(_StorePromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,isAutomatic: null == isAutomatic ? _self.isAutomatic : isAutomatic // ignore: cast_nullable_to_non_nullable
as bool,applicationMethod: freezed == applicationMethod ? _self.applicationMethod : applicationMethod // ignore: cast_nullable_to_non_nullable
as StoreApplicationMethod?,
  ));
}

/// Create a copy of StorePromotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreApplicationMethodCopyWith<$Res>? get applicationMethod {
    if (_self.applicationMethod == null) {
    return null;
  }

  return $StoreApplicationMethodCopyWith<$Res>(_self.applicationMethod!, (value) {
    return _then(_self.copyWith(applicationMethod: value));
  });
}
}


/// @nodoc
mixin _$StoreApplicationMethod {

 String? get type; num? get value; String? get currencyCode;
/// Create a copy of StoreApplicationMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreApplicationMethodCopyWith<StoreApplicationMethod> get copyWith => _$StoreApplicationMethodCopyWithImpl<StoreApplicationMethod>(this as StoreApplicationMethod, _$identity);

  /// Serializes this StoreApplicationMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreApplicationMethod;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreApplicationMethod&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreApplicationMethod;
  return Object.hash(runtimeType,_this.type,_this.value,_this.currencyCode);
}

@override
String toString() {
  final _this = this as StoreApplicationMethod;
  return 'StoreApplicationMethod(type: ${_this.type}, value: ${_this.value}, currencyCode: ${_this.currencyCode})';
}


}

/// @nodoc
abstract mixin class $StoreApplicationMethodCopyWith<$Res>  {
  factory $StoreApplicationMethodCopyWith(StoreApplicationMethod value, $Res Function(StoreApplicationMethod) _then) = _$StoreApplicationMethodCopyWithImpl;
@useResult
$Res call({
 String? type, num? value, String? currencyCode
});




}
/// @nodoc
class _$StoreApplicationMethodCopyWithImpl<$Res>
    implements $StoreApplicationMethodCopyWith<$Res> {
  _$StoreApplicationMethodCopyWithImpl(this._self, this._then);

  final StoreApplicationMethod _self;
  final $Res Function(StoreApplicationMethod) _then;

/// Create a copy of StoreApplicationMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? value = freezed,Object? currencyCode = freezed,}) {
  return _then(StoreApplicationMethod(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as num?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreApplicationMethod].
extension StoreApplicationMethodPatterns on StoreApplicationMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreApplicationMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreApplicationMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreApplicationMethod value)  $default,){
final _that = this;
switch (_that) {
case _StoreApplicationMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreApplicationMethod value)?  $default,){
final _that = this;
switch (_that) {
case _StoreApplicationMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  num? value,  String? currencyCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreApplicationMethod() when $default != null:
return $default(_that.type,_that.value,_that.currencyCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  num? value,  String? currencyCode)  $default,) {final _that = this;
switch (_that) {
case _StoreApplicationMethod():
return $default(_that.type,_that.value,_that.currencyCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  num? value,  String? currencyCode)?  $default,) {final _that = this;
switch (_that) {
case _StoreApplicationMethod() when $default != null:
return $default(_that.type,_that.value,_that.currencyCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreApplicationMethod implements StoreApplicationMethod {
  const _StoreApplicationMethod({this.type, this.value, this.currencyCode});
  factory _StoreApplicationMethod.fromJson(Map<String, dynamic> json) => _$StoreApplicationMethodFromJson(json);

@override final  String? type;
@override final  num? value;
@override final  String? currencyCode;

/// Create a copy of StoreApplicationMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreApplicationMethodCopyWith<_StoreApplicationMethod> get copyWith => __$StoreApplicationMethodCopyWithImpl<_StoreApplicationMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreApplicationMethodToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreApplicationMethod&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,value,currencyCode);
}

@override
String toString() {
    return 'StoreApplicationMethod(type: $type, value: $value, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class _$StoreApplicationMethodCopyWith<$Res> implements $StoreApplicationMethodCopyWith<$Res> {
  factory _$StoreApplicationMethodCopyWith(_StoreApplicationMethod value, $Res Function(_StoreApplicationMethod) _then) = __$StoreApplicationMethodCopyWithImpl;
@override @useResult
$Res call({
 String? type, num? value, String? currencyCode
});




}
/// @nodoc
class __$StoreApplicationMethodCopyWithImpl<$Res>
    implements _$StoreApplicationMethodCopyWith<$Res> {
  __$StoreApplicationMethodCopyWithImpl(this._self, this._then);

  final _StoreApplicationMethod _self;
  final $Res Function(_StoreApplicationMethod) _then;

/// Create a copy of StoreApplicationMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? value = freezed,Object? currencyCode = freezed,}) {
  return _then(_StoreApplicationMethod(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as num?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StorePaymentCollection {

 String get id; List<StorePaymentSession> get paymentSessions;
/// Create a copy of StorePaymentCollection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorePaymentCollectionCopyWith<StorePaymentCollection> get copyWith => _$StorePaymentCollectionCopyWithImpl<StorePaymentCollection>(this as StorePaymentCollection, _$identity);

  /// Serializes this StorePaymentCollection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StorePaymentCollection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorePaymentCollection&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.paymentSessions, _this.paymentSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StorePaymentCollection;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.paymentSessions));
}

@override
String toString() {
  final _this = this as StorePaymentCollection;
  return 'StorePaymentCollection(id: ${_this.id}, paymentSessions: ${_this.paymentSessions})';
}


}

/// @nodoc
abstract mixin class $StorePaymentCollectionCopyWith<$Res>  {
  factory $StorePaymentCollectionCopyWith(StorePaymentCollection value, $Res Function(StorePaymentCollection) _then) = _$StorePaymentCollectionCopyWithImpl;
@useResult
$Res call({
 String id, List<StorePaymentSession> paymentSessions
});




}
/// @nodoc
class _$StorePaymentCollectionCopyWithImpl<$Res>
    implements $StorePaymentCollectionCopyWith<$Res> {
  _$StorePaymentCollectionCopyWithImpl(this._self, this._then);

  final StorePaymentCollection _self;
  final $Res Function(StorePaymentCollection) _then;

/// Create a copy of StorePaymentCollection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? paymentSessions = null,}) {
  return _then(StorePaymentCollection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paymentSessions: null == paymentSessions ? _self.paymentSessions : paymentSessions // ignore: cast_nullable_to_non_nullable
as List<StorePaymentSession>,
  ));
}

}


/// Adds pattern-matching-related methods to [StorePaymentCollection].
extension StorePaymentCollectionPatterns on StorePaymentCollection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorePaymentCollection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorePaymentCollection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorePaymentCollection value)  $default,){
final _that = this;
switch (_that) {
case _StorePaymentCollection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorePaymentCollection value)?  $default,){
final _that = this;
switch (_that) {
case _StorePaymentCollection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<StorePaymentSession> paymentSessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorePaymentCollection() when $default != null:
return $default(_that.id,_that.paymentSessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<StorePaymentSession> paymentSessions)  $default,) {final _that = this;
switch (_that) {
case _StorePaymentCollection():
return $default(_that.id,_that.paymentSessions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<StorePaymentSession> paymentSessions)?  $default,) {final _that = this;
switch (_that) {
case _StorePaymentCollection() when $default != null:
return $default(_that.id,_that.paymentSessions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorePaymentCollection implements StorePaymentCollection {
  const _StorePaymentCollection({required this.id,  List<StorePaymentSession> paymentSessions = const []}): _paymentSessions = paymentSessions;
  factory _StorePaymentCollection.fromJson(Map<String, dynamic> json) => _$StorePaymentCollectionFromJson(json);

@override final  String id;
 final  List<StorePaymentSession> _paymentSessions;
@override@JsonKey() List<StorePaymentSession> get paymentSessions {
  if (_paymentSessions is EqualUnmodifiableListView) return _paymentSessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentSessions);
}


/// Create a copy of StorePaymentCollection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorePaymentCollectionCopyWith<_StorePaymentCollection> get copyWith => __$StorePaymentCollectionCopyWithImpl<_StorePaymentCollection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorePaymentCollectionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorePaymentCollection&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.paymentSessions, _paymentSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_paymentSessions));
}

@override
String toString() {
    return 'StorePaymentCollection(id: $id, paymentSessions: $paymentSessions)';
}


}

/// @nodoc
abstract mixin class _$StorePaymentCollectionCopyWith<$Res> implements $StorePaymentCollectionCopyWith<$Res> {
  factory _$StorePaymentCollectionCopyWith(_StorePaymentCollection value, $Res Function(_StorePaymentCollection) _then) = __$StorePaymentCollectionCopyWithImpl;
@override @useResult
$Res call({
 String id, List<StorePaymentSession> paymentSessions
});




}
/// @nodoc
class __$StorePaymentCollectionCopyWithImpl<$Res>
    implements _$StorePaymentCollectionCopyWith<$Res> {
  __$StorePaymentCollectionCopyWithImpl(this._self, this._then);

  final _StorePaymentCollection _self;
  final $Res Function(_StorePaymentCollection) _then;

/// Create a copy of StorePaymentCollection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paymentSessions = null,}) {
  return _then(_StorePaymentCollection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paymentSessions: null == paymentSessions ? _self._paymentSessions : paymentSessions // ignore: cast_nullable_to_non_nullable
as List<StorePaymentSession>,
  ));
}


}


/// @nodoc
mixin _$StorePaymentSession {

 String get id; String get providerId; String? get status; Map<String, dynamic>? get data;
/// Create a copy of StorePaymentSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorePaymentSessionCopyWith<StorePaymentSession> get copyWith => _$StorePaymentSessionCopyWithImpl<StorePaymentSession>(this as StorePaymentSession, _$identity);

  /// Serializes this StorePaymentSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StorePaymentSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorePaymentSession&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.providerId, _this.providerId) || other.providerId == _this.providerId)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StorePaymentSession;
  return Object.hash(runtimeType,_this.id,_this.providerId,_this.status,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as StorePaymentSession;
  return 'StorePaymentSession(id: ${_this.id}, providerId: ${_this.providerId}, status: ${_this.status}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $StorePaymentSessionCopyWith<$Res>  {
  factory $StorePaymentSessionCopyWith(StorePaymentSession value, $Res Function(StorePaymentSession) _then) = _$StorePaymentSessionCopyWithImpl;
@useResult
$Res call({
 String id, String providerId, String? status, Map<String, dynamic>? data
});




}
/// @nodoc
class _$StorePaymentSessionCopyWithImpl<$Res>
    implements $StorePaymentSessionCopyWith<$Res> {
  _$StorePaymentSessionCopyWithImpl(this._self, this._then);

  final StorePaymentSession _self;
  final $Res Function(StorePaymentSession) _then;

/// Create a copy of StorePaymentSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? providerId = null,Object? status = freezed,Object? data = freezed,}) {
  return _then(StorePaymentSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [StorePaymentSession].
extension StorePaymentSessionPatterns on StorePaymentSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorePaymentSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorePaymentSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorePaymentSession value)  $default,){
final _that = this;
switch (_that) {
case _StorePaymentSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorePaymentSession value)?  $default,){
final _that = this;
switch (_that) {
case _StorePaymentSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String providerId,  String? status,  Map<String, dynamic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorePaymentSession() when $default != null:
return $default(_that.id,_that.providerId,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String providerId,  String? status,  Map<String, dynamic>? data)  $default,) {final _that = this;
switch (_that) {
case _StorePaymentSession():
return $default(_that.id,_that.providerId,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String providerId,  String? status,  Map<String, dynamic>? data)?  $default,) {final _that = this;
switch (_that) {
case _StorePaymentSession() when $default != null:
return $default(_that.id,_that.providerId,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StorePaymentSession implements StorePaymentSession {
  const _StorePaymentSession({required this.id, required this.providerId, this.status,  Map<String, dynamic>? data}): _data = data;
  factory _StorePaymentSession.fromJson(Map<String, dynamic> json) => _$StorePaymentSessionFromJson(json);

@override final  String id;
@override final  String providerId;
@override final  String? status;
 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of StorePaymentSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorePaymentSessionCopyWith<_StorePaymentSession> get copyWith => __$StorePaymentSessionCopyWithImpl<_StorePaymentSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StorePaymentSessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorePaymentSession&&(identical(other.id, id) || other.id == id)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,providerId,status,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'StorePaymentSession(id: $id, providerId: $providerId, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StorePaymentSessionCopyWith<$Res> implements $StorePaymentSessionCopyWith<$Res> {
  factory _$StorePaymentSessionCopyWith(_StorePaymentSession value, $Res Function(_StorePaymentSession) _then) = __$StorePaymentSessionCopyWithImpl;
@override @useResult
$Res call({
 String id, String providerId, String? status, Map<String, dynamic>? data
});




}
/// @nodoc
class __$StorePaymentSessionCopyWithImpl<$Res>
    implements _$StorePaymentSessionCopyWith<$Res> {
  __$StorePaymentSessionCopyWithImpl(this._self, this._then);

  final _StorePaymentSession _self;
  final $Res Function(_StorePaymentSession) _then;

/// Create a copy of StorePaymentSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? providerId = null,Object? status = freezed,Object? data = freezed,}) {
  return _then(_StorePaymentSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
