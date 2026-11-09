import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_product.freezed.dart';
part 'store_product.g.dart';

/// A product from `GET /store/products`.
///
/// Prices only arrive when the request includes `region_id` and the
/// `*variants.calculated_price` field; `inventory_quantity` needs
/// `+variants.inventory_quantity`.
@freezed
abstract class StoreProduct with _$StoreProduct {
  const factory StoreProduct({
    required String id,
    required String title,
    String? subtitle,
    String? description,
    String? handle,
    String? thumbnail,
    String? collectionId,
    String? material,
    String? originCountry,
    num? weight,
    num? length,
    num? width,
    num? height,
    StoreProductType? type,
    StoreCollection? collection,
    @Default([]) List<StoreProductImage> images,
    @Default([]) List<StoreProductOption> options,
    @Default([]) List<StoreProductVariant> variants,
    @Default([]) List<StoreProductCategory> categories,
  }) = _StoreProduct;

  factory StoreProduct.fromJson(Map<String, dynamic> json) =>
      _$StoreProductFromJson(json);
}

@freezed
abstract class StoreProductImage with _$StoreProductImage {
  const factory StoreProductImage({required String id, required String url}) =
      _StoreProductImage;

  factory StoreProductImage.fromJson(Map<String, dynamic> json) =>
      _$StoreProductImageFromJson(json);
}

@freezed
abstract class StoreProductType with _$StoreProductType {
  const factory StoreProductType({required String id, required String value}) =
      _StoreProductType;

  factory StoreProductType.fromJson(Map<String, dynamic> json) =>
      _$StoreProductTypeFromJson(json);
}

@freezed
abstract class StoreProductOption with _$StoreProductOption {
  const factory StoreProductOption({
    required String id,
    required String title,
    @Default([]) List<StoreProductOptionValue> values,
  }) = _StoreProductOption;

  factory StoreProductOption.fromJson(Map<String, dynamic> json) =>
      _$StoreProductOptionFromJson(json);
}

@freezed
abstract class StoreProductOptionValue with _$StoreProductOptionValue {
  const factory StoreProductOptionValue({
    required String id,
    required String value,
    String? optionId,
  }) = _StoreProductOptionValue;

  factory StoreProductOptionValue.fromJson(Map<String, dynamic> json) =>
      _$StoreProductOptionValueFromJson(json);
}

@freezed
abstract class StoreProductVariant with _$StoreProductVariant {
  const factory StoreProductVariant({
    required String id,
    String? title,
    String? sku,
    @Default(false) bool manageInventory,
    @Default(false) bool allowBackorder,
    num? inventoryQuantity,
    @Default([]) List<StoreProductOptionValue> options,
    StoreCalculatedPrice? calculatedPrice,
  }) = _StoreProductVariant;

  const StoreProductVariant._();

  factory StoreProductVariant.fromJson(Map<String, dynamic> json) =>
      _$StoreProductVariantFromJson(json);

  /// Whether the variant can be added to the cart, following the stock rules
  /// Medusa applies to `inventory_quantity`, `manage_inventory` and
  /// `allow_backorder`.
  bool get inStock {
    if (!manageInventory) return true;
    if (allowBackorder) return true;
    return (inventoryQuantity ?? 0) > 0;
  }

  /// `option_id -> value` for matching the customer's selection.
  Map<String, String> get optionsMap => {
    for (final option in options)
      if (option.optionId != null) option.optionId!: option.value,
  };
}

/// The region price Medusa computes for a variant.
@freezed
abstract class StoreCalculatedPrice with _$StoreCalculatedPrice {
  const factory StoreCalculatedPrice({
    String? id,
    num? calculatedAmount,
    num? originalAmount,
    String? currencyCode,
    @JsonKey(name: 'calculated_price') StorePriceDetails? calculatedPrice,
    @JsonKey(name: 'original_price') StorePriceDetails? originalPrice,
  }) = _StoreCalculatedPrice;

  factory StoreCalculatedPrice.fromJson(Map<String, dynamic> json) =>
      _$StoreCalculatedPriceFromJson(json);
}

@freezed
abstract class StorePriceDetails with _$StorePriceDetails {
  const factory StorePriceDetails({
    String? id,
    String? priceListId,
    String? priceListType,
    num? minQuantity,
    num? maxQuantity,
  }) = _StorePriceDetails;

  factory StorePriceDetails.fromJson(Map<String, dynamic> json) =>
      _$StorePriceDetailsFromJson(json);
}

@freezed
abstract class StoreProductCategory with _$StoreProductCategory {
  const factory StoreProductCategory({
    required String id,
    required String name,
    String? description,
    String? handle,
    String? parentCategoryId,
  }) = _StoreProductCategory;

  factory StoreProductCategory.fromJson(Map<String, dynamic> json) =>
      _$StoreProductCategoryFromJson(json);
}

@freezed
abstract class StoreCollection with _$StoreCollection {
  const factory StoreCollection({
    required String id,
    required String title,
    String? handle,
  }) = _StoreCollection;

  factory StoreCollection.fromJson(Map<String, dynamic> json) =>
      _$StoreCollectionFromJson(json);
}
