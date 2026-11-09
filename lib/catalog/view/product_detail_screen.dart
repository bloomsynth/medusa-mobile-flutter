import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/cart/widgets/animated_cart_button.dart';
import 'package:medusa_mobile/catalog/widgets/featured_collection.dart';
import 'package:medusa_mobile/catalog/widgets/product_widgets.dart';
import 'package:medusa_mobile/catalog/widgets/wishlist_button.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({required this.productId, super.key});

  final String productId;

  /// Prices, the stock fields the Add to cart rules need, and categories for
  /// related products.
  static const fields =
      '*variants.calculated_price,+variants.inventory_quantity,*categories';

  @override
  Widget build(BuildContext context) {
    final regionId = context.select<RegionCubit, String?>(
      (cubit) => cubit.state.region?.id,
    );

    return Scaffold(
      backgroundColor: context.colors.backgroundSecondary,
      body: regionId == null
          ? const Loader()
          : BlocProvider(
              key: ValueKey('$productId|$regionId'),
              create: (context) => FetchCubit<StoreProduct>(
                () => context.read<MedusaClient>().product.retrieve(
                  productId,
                  regionId: regionId,
                  fields: fields,
                ),
              )..load(),
              child:
                  BlocBuilder<
                    FetchCubit<StoreProduct>,
                    FetchState<StoreProduct>
                  >(
                    builder: (context, state) {
                      if (state.isLoading) return const Loader();
                      final product = state.data;
                      if (product == null) {
                        return SafeArea(
                          child: Column(
                            children: [
                              const Navbar(),
                              Expanded(
                                child: ErrorView(
                                  onRetry: context
                                      .read<FetchCubit<StoreProduct>>()
                                      .load,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return _ProductContent(product: product);
                    },
                  ),
            ),
    );
  }
}

/// Which related products to ask for: the same collection is the closest
/// match, then shared categories. Null when the product has neither.
ProductListParams? relatedProductsParams(StoreProduct product) {
  if (product.collectionId != null) {
    return ProductListParams(collectionIds: [product.collectionId!]);
  }
  final categoryIds = product.categories.map((c) => c.id).toList();
  if (categoryIds.isNotEmpty) {
    return ProductListParams(categoryIds: categoryIds);
  }
  return null;
}

/// The variant whose option values equal [selected], or the only variant.
StoreProductVariant? matchVariant(
  StoreProduct product,
  Map<String, String> selected,
) {
  if (product.variants.isEmpty) return null;
  if (product.variants.length == 1) return product.variants.first;
  const equality = MapEquality<String, String>();
  return product.variants.firstWhereOrNull(
    (v) => equality.equals(v.optionsMap, selected),
  );
}

class _ProductContent extends StatefulWidget {
  const _ProductContent({required this.product});

  final StoreProduct product;

  @override
  State<_ProductContent> createState() => _ProductContentState();
}

class _ProductContentState extends State<_ProductContent> {
  /// `option_id -> value` the customer picked.
  final Map<String, String> _options = {};

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final colors = context.colors;
    final isSingleVariant = product.variants.length == 1;
    final selectedVariant = matchVariant(product, _options);
    final hasSelectedAllOptions = product.options.every(
      (option) => _options.containsKey(option.id),
    );
    final inStock = selectedVariant?.inStock ?? false;
    final related = relatedProductsParams(product);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      ProductImageCarousel(images: product.images),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: BackRoundedButton(),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -32),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          AppCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        product.title,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    const WishlistButton(),
                                  ],
                                ),
                                if (product.description != null) ...[
                                  const SizedBox(height: 8),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      product.description!,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                                const SizedBox(height: 8),
                                ProductPrice(
                                  product: product,
                                  variant: selectedVariant,
                                ),
                              ],
                            ),
                          ),
                          if (!isSingleVariant && product.options.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: AppCard(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    for (final option in product.options)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 16,
                                        ),
                                        child: OptionSelect(
                                          option: option,
                                          current: _options[option.id],
                                          onSelected: (value) => setState(
                                            () => _options[option.id] = value,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          const SizedBox(height: 16),
                          AppCard(child: ProductAttributes(product: product)),
                          const SizedBox(height: 16),
                          const AppCard(child: ProductFeatures()),
                          if (related != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: FeaturedCollection(
                                title: context.l10n.relatedProducts,
                                showCta: false,
                                params: related,
                                excludeProductId: product.id,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: colors.borderLight)),
            ),
            child: AnimatedCartButton(
              productId: product.id,
              selectedVariantId: selectedVariant?.id,
              inStock: inStock,
              hasSelectedAllOptions: hasSelectedAllOptions,
            ),
          ),
        ],
      ),
    );
  }
}
