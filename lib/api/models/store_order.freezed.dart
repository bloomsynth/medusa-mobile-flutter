// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreOrder {

 String get id; String get currencyCode; int? get displayId; String? get status; String? get fulfillmentStatus; String? get paymentStatus; String? get email; DateTime? get createdAt; List<StoreOrderLineItem> get items; StoreAddress? get shippingAddress; StoreAddress? get billingAddress; num get total; num get subtotal; num get shippingTotal; num get taxTotal; num get discountTotal;
/// Create a copy of StoreOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreOrderCopyWith<StoreOrder> get copyWith => _$StoreOrderCopyWithImpl<StoreOrder>(this as StoreOrder, _$identity);

  /// Serializes this StoreOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreOrder;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrder&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode)&&(identical(other.displayId, _this.displayId) || other.displayId == _this.displayId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.fulfillmentStatus, _this.fulfillmentStatus) || other.fulfillmentStatus == _this.fulfillmentStatus)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.shippingAddress, _this.shippingAddress) || other.shippingAddress == _this.shippingAddress)&&(identical(other.billingAddress, _this.billingAddress) || other.billingAddress == _this.billingAddress)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.shippingTotal, _this.shippingTotal) || other.shippingTotal == _this.shippingTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreOrder;
  return Object.hash(runtimeType,_this.id,_this.currencyCode,_this.displayId,_this.status,_this.fulfillmentStatus,_this.paymentStatus,_this.email,_this.createdAt,const DeepCollectionEquality().hash(_this.items),_this.shippingAddress,_this.billingAddress,_this.total,_this.subtotal,_this.shippingTotal,_this.taxTotal,_this.discountTotal);
}

@override
String toString() {
  final _this = this as StoreOrder;
  return 'StoreOrder(id: ${_this.id}, currencyCode: ${_this.currencyCode}, displayId: ${_this.displayId}, status: ${_this.status}, fulfillmentStatus: ${_this.fulfillmentStatus}, paymentStatus: ${_this.paymentStatus}, email: ${_this.email}, createdAt: ${_this.createdAt}, items: ${_this.items}, shippingAddress: ${_this.shippingAddress}, billingAddress: ${_this.billingAddress}, total: ${_this.total}, subtotal: ${_this.subtotal}, shippingTotal: ${_this.shippingTotal}, taxTotal: ${_this.taxTotal}, discountTotal: ${_this.discountTotal})';
}


}

/// @nodoc
abstract mixin class $StoreOrderCopyWith<$Res>  {
  factory $StoreOrderCopyWith(StoreOrder value, $Res Function(StoreOrder) _then) = _$StoreOrderCopyWithImpl;
@useResult
$Res call({
 String id, String currencyCode, int? displayId, String? status, String? fulfillmentStatus, String? paymentStatus, String? email, DateTime? createdAt, List<StoreOrderLineItem> items, StoreAddress? shippingAddress, StoreAddress? billingAddress, num total, num subtotal, num shippingTotal, num taxTotal, num discountTotal
});


$StoreAddressCopyWith<$Res>? get shippingAddress;$StoreAddressCopyWith<$Res>? get billingAddress;

}
/// @nodoc
class _$StoreOrderCopyWithImpl<$Res>
    implements $StoreOrderCopyWith<$Res> {
  _$StoreOrderCopyWithImpl(this._self, this._then);

  final StoreOrder _self;
  final $Res Function(StoreOrder) _then;

/// Create a copy of StoreOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currencyCode = null,Object? displayId = freezed,Object? status = freezed,Object? fulfillmentStatus = freezed,Object? paymentStatus = freezed,Object? email = freezed,Object? createdAt = freezed,Object? items = null,Object? shippingAddress = freezed,Object? billingAddress = freezed,Object? total = null,Object? subtotal = null,Object? shippingTotal = null,Object? taxTotal = null,Object? discountTotal = null,}) {
  return _then(StoreOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,displayId: freezed == displayId ? _self.displayId : displayId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentStatus: freezed == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<StoreOrderLineItem>,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num,shippingTotal: null == shippingTotal ? _self.shippingTotal : shippingTotal // ignore: cast_nullable_to_non_nullable
as num,taxTotal: null == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as num,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as num,
  ));
}
/// Create a copy of StoreOrder
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
}/// Create a copy of StoreOrder
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
}
}


/// Adds pattern-matching-related methods to [StoreOrder].
extension StoreOrderPatterns on StoreOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreOrder value)  $default,){
final _that = this;
switch (_that) {
case _StoreOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreOrder value)?  $default,){
final _that = this;
switch (_that) {
case _StoreOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String currencyCode,  int? displayId,  String? status,  String? fulfillmentStatus,  String? paymentStatus,  String? email,  DateTime? createdAt,  List<StoreOrderLineItem> items,  StoreAddress? shippingAddress,  StoreAddress? billingAddress,  num total,  num subtotal,  num shippingTotal,  num taxTotal,  num discountTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreOrder() when $default != null:
return $default(_that.id,_that.currencyCode,_that.displayId,_that.status,_that.fulfillmentStatus,_that.paymentStatus,_that.email,_that.createdAt,_that.items,_that.shippingAddress,_that.billingAddress,_that.total,_that.subtotal,_that.shippingTotal,_that.taxTotal,_that.discountTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String currencyCode,  int? displayId,  String? status,  String? fulfillmentStatus,  String? paymentStatus,  String? email,  DateTime? createdAt,  List<StoreOrderLineItem> items,  StoreAddress? shippingAddress,  StoreAddress? billingAddress,  num total,  num subtotal,  num shippingTotal,  num taxTotal,  num discountTotal)  $default,) {final _that = this;
switch (_that) {
case _StoreOrder():
return $default(_that.id,_that.currencyCode,_that.displayId,_that.status,_that.fulfillmentStatus,_that.paymentStatus,_that.email,_that.createdAt,_that.items,_that.shippingAddress,_that.billingAddress,_that.total,_that.subtotal,_that.shippingTotal,_that.taxTotal,_that.discountTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String currencyCode,  int? displayId,  String? status,  String? fulfillmentStatus,  String? paymentStatus,  String? email,  DateTime? createdAt,  List<StoreOrderLineItem> items,  StoreAddress? shippingAddress,  StoreAddress? billingAddress,  num total,  num subtotal,  num shippingTotal,  num taxTotal,  num discountTotal)?  $default,) {final _that = this;
switch (_that) {
case _StoreOrder() when $default != null:
return $default(_that.id,_that.currencyCode,_that.displayId,_that.status,_that.fulfillmentStatus,_that.paymentStatus,_that.email,_that.createdAt,_that.items,_that.shippingAddress,_that.billingAddress,_that.total,_that.subtotal,_that.shippingTotal,_that.taxTotal,_that.discountTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreOrder implements StoreOrder {
  const _StoreOrder({required this.id, required this.currencyCode, this.displayId, this.status, this.fulfillmentStatus, this.paymentStatus, this.email, this.createdAt,  List<StoreOrderLineItem> items = const [], this.shippingAddress, this.billingAddress, this.total = 0, this.subtotal = 0, this.shippingTotal = 0, this.taxTotal = 0, this.discountTotal = 0}): _items = items;
  factory _StoreOrder.fromJson(Map<String, dynamic> json) => _$StoreOrderFromJson(json);

@override final  String id;
@override final  String currencyCode;
@override final  int? displayId;
@override final  String? status;
@override final  String? fulfillmentStatus;
@override final  String? paymentStatus;
@override final  String? email;
@override final  DateTime? createdAt;
 final  List<StoreOrderLineItem> _items;
@override@JsonKey() List<StoreOrderLineItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  StoreAddress? shippingAddress;
@override final  StoreAddress? billingAddress;
@override@JsonKey() final  num total;
@override@JsonKey() final  num subtotal;
@override@JsonKey() final  num shippingTotal;
@override@JsonKey() final  num taxTotal;
@override@JsonKey() final  num discountTotal;

/// Create a copy of StoreOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreOrderCopyWith<_StoreOrder> get copyWith => __$StoreOrderCopyWithImpl<_StoreOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreOrderToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.displayId, displayId) || other.displayId == displayId)&&(identical(other.status, status) || other.status == status)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.billingAddress, billingAddress) || other.billingAddress == billingAddress)&&(identical(other.total, total) || other.total == total)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingTotal, shippingTotal) || other.shippingTotal == shippingTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,currencyCode,displayId,status,fulfillmentStatus,paymentStatus,email,createdAt,const DeepCollectionEquality().hash(_items),shippingAddress,billingAddress,total,subtotal,shippingTotal,taxTotal,discountTotal);
}

@override
String toString() {
    return 'StoreOrder(id: $id, currencyCode: $currencyCode, displayId: $displayId, status: $status, fulfillmentStatus: $fulfillmentStatus, paymentStatus: $paymentStatus, email: $email, createdAt: $createdAt, items: $items, shippingAddress: $shippingAddress, billingAddress: $billingAddress, total: $total, subtotal: $subtotal, shippingTotal: $shippingTotal, taxTotal: $taxTotal, discountTotal: $discountTotal)';
}


}

/// @nodoc
abstract mixin class _$StoreOrderCopyWith<$Res> implements $StoreOrderCopyWith<$Res> {
  factory _$StoreOrderCopyWith(_StoreOrder value, $Res Function(_StoreOrder) _then) = __$StoreOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String currencyCode, int? displayId, String? status, String? fulfillmentStatus, String? paymentStatus, String? email, DateTime? createdAt, List<StoreOrderLineItem> items, StoreAddress? shippingAddress, StoreAddress? billingAddress, num total, num subtotal, num shippingTotal, num taxTotal, num discountTotal
});


@override $StoreAddressCopyWith<$Res>? get shippingAddress;@override $StoreAddressCopyWith<$Res>? get billingAddress;

}
/// @nodoc
class __$StoreOrderCopyWithImpl<$Res>
    implements _$StoreOrderCopyWith<$Res> {
  __$StoreOrderCopyWithImpl(this._self, this._then);

  final _StoreOrder _self;
  final $Res Function(_StoreOrder) _then;

/// Create a copy of StoreOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currencyCode = null,Object? displayId = freezed,Object? status = freezed,Object? fulfillmentStatus = freezed,Object? paymentStatus = freezed,Object? email = freezed,Object? createdAt = freezed,Object? items = null,Object? shippingAddress = freezed,Object? billingAddress = freezed,Object? total = null,Object? subtotal = null,Object? shippingTotal = null,Object? taxTotal = null,Object? discountTotal = null,}) {
  return _then(_StoreOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,displayId: freezed == displayId ? _self.displayId : displayId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentStatus: freezed == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StoreOrderLineItem>,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as StoreAddress?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as num,shippingTotal: null == shippingTotal ? _self.shippingTotal : shippingTotal // ignore: cast_nullable_to_non_nullable
as num,taxTotal: null == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as num,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

/// Create a copy of StoreOrder
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
}/// Create a copy of StoreOrder
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
}
}


/// @nodoc
mixin _$StoreOrderLineItem {

 String get id; int get quantity; num get unitPrice; String? get title; String? get productTitle; String? get variantTitle; String? get thumbnail; num? get total; num? get originalTotal;
/// Create a copy of StoreOrderLineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreOrderLineItemCopyWith<StoreOrderLineItem> get copyWith => _$StoreOrderLineItemCopyWithImpl<StoreOrderLineItem>(this as StoreOrderLineItem, _$identity);

  /// Serializes this StoreOrderLineItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreOrderLineItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrderLineItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unitPrice, _this.unitPrice) || other.unitPrice == _this.unitPrice)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.productTitle, _this.productTitle) || other.productTitle == _this.productTitle)&&(identical(other.variantTitle, _this.variantTitle) || other.variantTitle == _this.variantTitle)&&(identical(other.thumbnail, _this.thumbnail) || other.thumbnail == _this.thumbnail)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.originalTotal, _this.originalTotal) || other.originalTotal == _this.originalTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreOrderLineItem;
  return Object.hash(runtimeType,_this.id,_this.quantity,_this.unitPrice,_this.title,_this.productTitle,_this.variantTitle,_this.thumbnail,_this.total,_this.originalTotal);
}

@override
String toString() {
  final _this = this as StoreOrderLineItem;
  return 'StoreOrderLineItem(id: ${_this.id}, quantity: ${_this.quantity}, unitPrice: ${_this.unitPrice}, title: ${_this.title}, productTitle: ${_this.productTitle}, variantTitle: ${_this.variantTitle}, thumbnail: ${_this.thumbnail}, total: ${_this.total}, originalTotal: ${_this.originalTotal})';
}


}

/// @nodoc
abstract mixin class $StoreOrderLineItemCopyWith<$Res>  {
  factory $StoreOrderLineItemCopyWith(StoreOrderLineItem value, $Res Function(StoreOrderLineItem) _then) = _$StoreOrderLineItemCopyWithImpl;
@useResult
$Res call({
 String id, int quantity, num unitPrice, String? title, String? productTitle, String? variantTitle, String? thumbnail, num? total, num? originalTotal
});




}
/// @nodoc
class _$StoreOrderLineItemCopyWithImpl<$Res>
    implements $StoreOrderLineItemCopyWith<$Res> {
  _$StoreOrderLineItemCopyWithImpl(this._self, this._then);

  final StoreOrderLineItem _self;
  final $Res Function(StoreOrderLineItem) _then;

/// Create a copy of StoreOrderLineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quantity = null,Object? unitPrice = null,Object? title = freezed,Object? productTitle = freezed,Object? variantTitle = freezed,Object? thumbnail = freezed,Object? total = freezed,Object? originalTotal = freezed,}) {
  return _then(StoreOrderLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as num,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,productTitle: freezed == productTitle ? _self.productTitle : productTitle // ignore: cast_nullable_to_non_nullable
as String?,variantTitle: freezed == variantTitle ? _self.variantTitle : variantTitle // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,originalTotal: freezed == originalTotal ? _self.originalTotal : originalTotal // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreOrderLineItem].
extension StoreOrderLineItemPatterns on StoreOrderLineItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreOrderLineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreOrderLineItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreOrderLineItem value)  $default,){
final _that = this;
switch (_that) {
case _StoreOrderLineItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreOrderLineItem value)?  $default,){
final _that = this;
switch (_that) {
case _StoreOrderLineItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int quantity,  num unitPrice,  String? title,  String? productTitle,  String? variantTitle,  String? thumbnail,  num? total,  num? originalTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreOrderLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.unitPrice,_that.title,_that.productTitle,_that.variantTitle,_that.thumbnail,_that.total,_that.originalTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int quantity,  num unitPrice,  String? title,  String? productTitle,  String? variantTitle,  String? thumbnail,  num? total,  num? originalTotal)  $default,) {final _that = this;
switch (_that) {
case _StoreOrderLineItem():
return $default(_that.id,_that.quantity,_that.unitPrice,_that.title,_that.productTitle,_that.variantTitle,_that.thumbnail,_that.total,_that.originalTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int quantity,  num unitPrice,  String? title,  String? productTitle,  String? variantTitle,  String? thumbnail,  num? total,  num? originalTotal)?  $default,) {final _that = this;
switch (_that) {
case _StoreOrderLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.unitPrice,_that.title,_that.productTitle,_that.variantTitle,_that.thumbnail,_that.total,_that.originalTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreOrderLineItem implements StoreOrderLineItem {
  const _StoreOrderLineItem({required this.id, required this.quantity, this.unitPrice = 0, this.title, this.productTitle, this.variantTitle, this.thumbnail, this.total, this.originalTotal});
  factory _StoreOrderLineItem.fromJson(Map<String, dynamic> json) => _$StoreOrderLineItemFromJson(json);

@override final  String id;
@override final  int quantity;
@override@JsonKey() final  num unitPrice;
@override final  String? title;
@override final  String? productTitle;
@override final  String? variantTitle;
@override final  String? thumbnail;
@override final  num? total;
@override final  num? originalTotal;

/// Create a copy of StoreOrderLineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreOrderLineItemCopyWith<_StoreOrderLineItem> get copyWith => __$StoreOrderLineItemCopyWithImpl<_StoreOrderLineItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreOrderLineItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreOrderLineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.title, title) || other.title == title)&&(identical(other.productTitle, productTitle) || other.productTitle == productTitle)&&(identical(other.variantTitle, variantTitle) || other.variantTitle == variantTitle)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.total, total) || other.total == total)&&(identical(other.originalTotal, originalTotal) || other.originalTotal == originalTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,quantity,unitPrice,title,productTitle,variantTitle,thumbnail,total,originalTotal);
}

@override
String toString() {
    return 'StoreOrderLineItem(id: $id, quantity: $quantity, unitPrice: $unitPrice, title: $title, productTitle: $productTitle, variantTitle: $variantTitle, thumbnail: $thumbnail, total: $total, originalTotal: $originalTotal)';
}


}

/// @nodoc
abstract mixin class _$StoreOrderLineItemCopyWith<$Res> implements $StoreOrderLineItemCopyWith<$Res> {
  factory _$StoreOrderLineItemCopyWith(_StoreOrderLineItem value, $Res Function(_StoreOrderLineItem) _then) = __$StoreOrderLineItemCopyWithImpl;
@override @useResult
$Res call({
 String id, int quantity, num unitPrice, String? title, String? productTitle, String? variantTitle, String? thumbnail, num? total, num? originalTotal
});




}
/// @nodoc
class __$StoreOrderLineItemCopyWithImpl<$Res>
    implements _$StoreOrderLineItemCopyWith<$Res> {
  __$StoreOrderLineItemCopyWithImpl(this._self, this._then);

  final _StoreOrderLineItem _self;
  final $Res Function(_StoreOrderLineItem) _then;

/// Create a copy of StoreOrderLineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quantity = null,Object? unitPrice = null,Object? title = freezed,Object? productTitle = freezed,Object? variantTitle = freezed,Object? thumbnail = freezed,Object? total = freezed,Object? originalTotal = freezed,}) {
  return _then(_StoreOrderLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as num,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,productTitle: freezed == productTitle ? _self.productTitle : productTitle // ignore: cast_nullable_to_non_nullable
as String?,variantTitle: freezed == variantTitle ? _self.variantTitle : variantTitle // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as num?,originalTotal: freezed == originalTotal ? _self.originalTotal : originalTotal // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
