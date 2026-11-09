import 'package:flutter_test/flutter_test.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/catalog/view/product_detail_screen.dart';
import 'package:medusa_mobile/shared/utils/image_url.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';
import 'package:medusa_mobile/shared/utils/product_price.dart';

StoreProductVariant _variant(
  String id, {
  Map<String, String> options = const {},
  num? amount,
  num? original,
  String? priceListType,
  bool manageInventory = false,
  bool allowBackorder = false,
  num? inventory,
}) => StoreProductVariant(
  id: id,
  manageInventory: manageInventory,
  allowBackorder: allowBackorder,
  inventoryQuantity: inventory,
  options: [
    for (final entry in options.entries)
      StoreProductOptionValue(
        id: '${entry.key}_${entry.value}',
        value: entry.value,
        optionId: entry.key,
      ),
  ],
  calculatedPrice: amount == null
      ? null
      : StoreCalculatedPrice(
          calculatedAmount: amount,
          originalAmount: original ?? amount,
          currencyCode: 'usd',
          calculatedPrice: StorePriceDetails(priceListType: priceListType),
        ),
);

void main() {
  group('prices', () {
    test('formats amounts in the currency, or plainly without one', () {
      expect(formatAmount(12.5, 'usd'), r'$12.50');
      expect(formatAmount(10, 'eur'), '€10.00');
      expect(formatAmount(10, ''), '10');
      expect(formatAmount(null, 'usd'), '');
    });

    test('the cheapest priced variant is the card price', () {
      final product = StoreProduct(
        id: 'prod_1',
        title: 'Shirt',
        variants: [
          _variant('unpriced'),
          _variant('b', amount: 20),
          _variant('a', amount: 15, original: 20, priceListType: 'sale'),
        ],
      );

      final price = cheapestPrice(product)!;

      expect(price.calculatedPrice, r'$15.00');
      expect(price.originalPrice, r'$20.00');
      expect(price.isSale, isTrue);
      expect(price.percentageDiff, 25);
      expect(variantPrice(product, 'b')!.isSale, isFalse);
      expect(variantPrice(product, 'missing'), isNull);
      expect(
        cheapestPrice(const StoreProduct(id: 'p', title: 'Empty')),
        isNull,
      );
    });
  });

  group('variant selection', () {
    final product = StoreProduct(
      id: 'prod_1',
      title: 'Shirt',
      variants: [
        _variant('s_black', options: {'size': 'S', 'color': 'Black'}),
        _variant('m_black', options: {'size': 'M', 'color': 'Black'}),
      ],
    );

    test('matches only a complete selection', () {
      expect(matchVariant(product, {}), isNull);
      expect(matchVariant(product, {'size': 'M'}), isNull);
      expect(
        matchVariant(product, {'size': 'M', 'color': 'Black'})?.id,
        'm_black',
      );
      expect(matchVariant(product, {'size': 'L', 'color': 'Black'}), isNull);
    });

    test('a single variant needs no selection', () {
      final single = StoreProduct(
        id: 'prod_2',
        title: 'Mug',
        variants: [_variant('only')],
      );
      expect(matchVariant(single, {})?.id, 'only');
    });
  });

  test('stock follows manage_inventory, backorder and quantity', () {
    expect(_variant('a').inStock, isTrue);
    expect(_variant('b', manageInventory: true, inventory: 0).inStock, isFalse);
    expect(_variant('c', manageInventory: true).inStock, isFalse);
    expect(_variant('d', manageInventory: true, inventory: 2).inStock, isTrue);
    expect(
      _variant(
        'e',
        manageInventory: true,
        allowBackorder: true,
        inventory: 0,
      ).inStock,
      isTrue,
    );
  });

  test('related products use the collection, then the categories', () {
    const categories = [
      StoreProductCategory(id: 'cat_1', name: 'Shirts'),
      StoreProductCategory(id: 'cat_2', name: 'Sale'),
    ];
    final inCollection = relatedProductsParams(
      const StoreProduct(
        id: 'p',
        title: 'T',
        collectionId: 'col_1',
        categories: categories,
      ),
    )!;
    expect(inCollection.collectionIds, ['col_1']);
    expect(inCollection.categoryIds, isNull);

    expect(
      relatedProductsParams(
        const StoreProduct(id: 'p', title: 'T', categories: categories),
      )!.categoryIds,
      ['cat_1', 'cat_2'],
    );
    expect(
      relatedProductsParams(const StoreProduct(id: 'p', title: 'T')),
      isNull,
    );
  });

  test('seeded localhost image URLs point at the configured backend', () {
    expect(
      formatImageUrl(
        'http://localhost:9000/static/a.png',
        backendUrl: 'http://10.0.2.2:9000',
      ),
      'http://10.0.2.2:9000/static/a.png',
    );
    expect(
      formatImageUrl('https://cdn.example.com/a.png'),
      'https://cdn.example.com/a.png',
    );
    expect(formatImageUrl(null), '');
  });
}
