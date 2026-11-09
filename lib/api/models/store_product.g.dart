// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreProduct _$StoreProductFromJson(
  Map<String, dynamic> json,
) => _StoreProduct(
  id: json['id'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String?,
  description: json['description'] as String?,
  handle: json['handle'] as String?,
  thumbnail: json['thumbnail'] as String?,
  collectionId: json['collection_id'] as String?,
  material: json['material'] as String?,
  originCountry: json['origin_country'] as String?,
  weight: json['weight'] as num?,
  length: json['length'] as num?,
  width: json['width'] as num?,
  height: json['height'] as num?,
  type: json['type'] == null
      ? null
      : StoreProductType.fromJson(json['type'] as Map<String, dynamic>),
  collection: json['collection'] == null
      ? null
      : StoreCollection.fromJson(json['collection'] as Map<String, dynamic>),
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => StoreProductImage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => StoreProductOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => StoreProductVariant.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => StoreProductCategory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StoreProductToJson(_StoreProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': ?instance.subtitle,
      'description': ?instance.description,
      'handle': ?instance.handle,
      'thumbnail': ?instance.thumbnail,
      'collection_id': ?instance.collectionId,
      'material': ?instance.material,
      'origin_country': ?instance.originCountry,
      'weight': ?instance.weight,
      'length': ?instance.length,
      'width': ?instance.width,
      'height': ?instance.height,
      'type': ?instance.type?.toJson(),
      'collection': ?instance.collection?.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'options': instance.options.map((e) => e.toJson()).toList(),
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };

_StoreProductImage _$StoreProductImageFromJson(Map<String, dynamic> json) =>
    _StoreProductImage(id: json['id'] as String, url: json['url'] as String);

Map<String, dynamic> _$StoreProductImageToJson(_StoreProductImage instance) =>
    <String, dynamic>{'id': instance.id, 'url': instance.url};

_StoreProductType _$StoreProductTypeFromJson(Map<String, dynamic> json) =>
    _StoreProductType(id: json['id'] as String, value: json['value'] as String);

Map<String, dynamic> _$StoreProductTypeToJson(_StoreProductType instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};

_StoreProductOption _$StoreProductOptionFromJson(Map<String, dynamic> json) =>
    _StoreProductOption(
      id: json['id'] as String,
      title: json['title'] as String,
      values:
          (json['values'] as List<dynamic>?)
              ?.map(
                (e) =>
                    StoreProductOptionValue.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StoreProductOptionToJson(_StoreProductOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

_StoreProductOptionValue _$StoreProductOptionValueFromJson(
  Map<String, dynamic> json,
) => _StoreProductOptionValue(
  id: json['id'] as String,
  value: json['value'] as String,
  optionId: json['option_id'] as String?,
);

Map<String, dynamic> _$StoreProductOptionValueToJson(
  _StoreProductOptionValue instance,
) => <String, dynamic>{
  'id': instance.id,
  'value': instance.value,
  'option_id': ?instance.optionId,
};

_StoreProductVariant _$StoreProductVariantFromJson(Map<String, dynamic> json) =>
    _StoreProductVariant(
      id: json['id'] as String,
      title: json['title'] as String?,
      sku: json['sku'] as String?,
      manageInventory: json['manage_inventory'] as bool? ?? false,
      allowBackorder: json['allow_backorder'] as bool? ?? false,
      inventoryQuantity: json['inventory_quantity'] as num?,
      options:
          (json['options'] as List<dynamic>?)
              ?.map(
                (e) =>
                    StoreProductOptionValue.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      calculatedPrice: json['calculated_price'] == null
          ? null
          : StoreCalculatedPrice.fromJson(
              json['calculated_price'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StoreProductVariantToJson(
  _StoreProductVariant instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': ?instance.title,
  'sku': ?instance.sku,
  'manage_inventory': instance.manageInventory,
  'allow_backorder': instance.allowBackorder,
  'inventory_quantity': ?instance.inventoryQuantity,
  'options': instance.options.map((e) => e.toJson()).toList(),
  'calculated_price': ?instance.calculatedPrice?.toJson(),
};

_StoreCalculatedPrice _$StoreCalculatedPriceFromJson(
  Map<String, dynamic> json,
) => _StoreCalculatedPrice(
  id: json['id'] as String?,
  calculatedAmount: json['calculated_amount'] as num?,
  originalAmount: json['original_amount'] as num?,
  currencyCode: json['currency_code'] as String?,
  calculatedPrice: json['calculated_price'] == null
      ? null
      : StorePriceDetails.fromJson(
          json['calculated_price'] as Map<String, dynamic>,
        ),
  originalPrice: json['original_price'] == null
      ? null
      : StorePriceDetails.fromJson(
          json['original_price'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StoreCalculatedPriceToJson(
  _StoreCalculatedPrice instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'calculated_amount': ?instance.calculatedAmount,
  'original_amount': ?instance.originalAmount,
  'currency_code': ?instance.currencyCode,
  'calculated_price': ?instance.calculatedPrice?.toJson(),
  'original_price': ?instance.originalPrice?.toJson(),
};

_StorePriceDetails _$StorePriceDetailsFromJson(Map<String, dynamic> json) =>
    _StorePriceDetails(
      id: json['id'] as String?,
      priceListId: json['price_list_id'] as String?,
      priceListType: json['price_list_type'] as String?,
      minQuantity: json['min_quantity'] as num?,
      maxQuantity: json['max_quantity'] as num?,
    );

Map<String, dynamic> _$StorePriceDetailsToJson(_StorePriceDetails instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'price_list_id': ?instance.priceListId,
      'price_list_type': ?instance.priceListType,
      'min_quantity': ?instance.minQuantity,
      'max_quantity': ?instance.maxQuantity,
    };

_StoreProductCategory _$StoreProductCategoryFromJson(
  Map<String, dynamic> json,
) => _StoreProductCategory(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  handle: json['handle'] as String?,
  parentCategoryId: json['parent_category_id'] as String?,
);

Map<String, dynamic> _$StoreProductCategoryToJson(
  _StoreProductCategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': ?instance.description,
  'handle': ?instance.handle,
  'parent_category_id': ?instance.parentCategoryId,
};

_StoreCollection _$StoreCollectionFromJson(Map<String, dynamic> json) =>
    _StoreCollection(
      id: json['id'] as String,
      title: json['title'] as String,
      handle: json['handle'] as String?,
    );

Map<String, dynamic> _$StoreCollectionToJson(_StoreCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'handle': ?instance.handle,
    };
