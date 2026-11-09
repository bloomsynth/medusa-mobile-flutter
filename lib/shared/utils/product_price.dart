import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';

/// A variant's region price, formatted for display.
class VariantPrice {
  const VariantPrice({
    required this.calculatedAmount,
    required this.calculatedPrice,
    required this.originalAmount,
    required this.originalPrice,
    required this.currencyCode,
    required this.priceType,
    required this.percentageDiff,
  });

  final num calculatedAmount;
  final String calculatedPrice;
  final num originalAmount;
  final String originalPrice;
  final String? currencyCode;

  /// `sale` when a price list reduced the price.
  final String? priceType;
  final int percentageDiff;

  bool get isSale => priceType == 'sale';
}

VariantPrice? pricesForVariant(StoreProductVariant? variant) {
  final price = variant?.calculatedPrice;
  final calculated = price?.calculatedAmount;
  if (price == null || calculated == null) return null;
  final original = price.originalAmount ?? calculated;
  return VariantPrice(
    calculatedAmount: calculated,
    calculatedPrice: formatAmount(calculated, price.currencyCode),
    originalAmount: original,
    originalPrice: formatAmount(original, price.currencyCode),
    currencyCode: price.currencyCode,
    priceType: price.calculatedPrice?.priceListType,
    percentageDiff: percentageDiff(original, calculated),
  );
}

/// The lowest variant price, for product cards.
VariantPrice? cheapestPrice(StoreProduct product) {
  final priced =
      product.variants
          .where((v) => v.calculatedPrice?.calculatedAmount != null)
          .toList()
        ..sort(
          (a, b) => a.calculatedPrice!.calculatedAmount!.compareTo(
            b.calculatedPrice!.calculatedAmount!,
          ),
        );
  return pricesForVariant(priced.firstOrNull);
}

VariantPrice? variantPrice(StoreProduct product, String? variantId) {
  if (variantId == null) return null;
  final variant = product.variants
      .where((v) => v.id == variantId || v.sku == variantId)
      .firstOrNull;
  return pricesForVariant(variant);
}
