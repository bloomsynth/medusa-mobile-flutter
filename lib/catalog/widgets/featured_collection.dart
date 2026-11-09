import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/catalog/widgets/preview_price.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/utils/product_price.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// A horizontal strip of products. Hidden when there is nothing to show.
class FeaturedCollection extends StatelessWidget {
  const FeaturedCollection({
    this.title,
    this.showCta = true,
    this.limit = 10,
    this.params = const ProductListParams(),
    this.excludeProductId,
    super.key,
  });

  final String? title;

  /// Shows "See All", which opens the Collections tab.
  final bool showCta;
  final int limit;
  final ProductListParams params;

  /// A product to leave out, such as the one being viewed.
  final String? excludeProductId;

  @override
  Widget build(BuildContext context) {
    final region = context.watch<RegionCubit>().state.region;
    if (region == null) return const SizedBox.shrink();

    final effective = ProductListParams(
      // One extra, so leaving a product out does not shorten the strip.
      limit: excludeProductId == null ? limit : limit + 1,
      regionId: region.id,
      fields: ProductApi.priceFields,
      q: params.q,
      categoryIds: params.categoryIds,
      collectionIds: params.collectionIds,
    );

    return BlocProvider(
      key: ValueKey('$effective|$excludeProductId'),
      create: (context) {
        final client = context.read<MedusaClient>();
        return FetchCubit<List<StoreProduct>>(() async {
          final response = await client.product.list(effective);
          return response.products
              .where((product) => product.id != excludeProductId)
              .take(limit)
              .toList();
        })..load();
      },
      child:
          BlocBuilder<
            FetchCubit<List<StoreProduct>>,
            FetchState<List<StoreProduct>>
          >(
            builder: (context, state) {
              final products = state.data ?? const <StoreProduct>[];
              if (products.isEmpty) return const SizedBox.shrink();
              final itemWidth = MediaQuery.sizeOf(context).width * 0.35;

              return Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title ?? context.l10n.topSelling,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (showCta)
                          GestureDetector(
                            onTap: () => context.go(AppRoutes.collections),
                            child: Text(
                              context.l10n.seeAll,
                              style: TextStyle(color: context.colors.primary),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 256,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 16),
                        itemBuilder: (context, index) => _ProductCard(
                          product: products[index],
                          width: itemWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({required this.product, required this.width});

  final StoreProduct product;
  final double width;

  @override
  Widget build(BuildContext context) {
    final price = cheapestPrice(product);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.push(AppRoutes.product(product.id)),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppNetworkImage(
              url: product.thumbnail,
              height: 192,
              width: width,
              borderRadius: BorderRadius.circular(8),
            ),
            const SizedBox(height: 8),
            Text(
              product.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            if (price != null) PreviewPrice(price: price),
          ],
        ),
      ),
    );
  }
}
