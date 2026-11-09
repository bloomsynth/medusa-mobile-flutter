import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/catalog/cubit/product_list_cubit.dart';
import 'package:medusa_mobile/catalog/widgets/preview_price.dart';
import 'package:medusa_mobile/catalog/widgets/wishlist_button.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/region/cubit/region_state.dart';
import 'package:medusa_mobile/shared/utils/product_price.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';

/// A two-column, infinitely scrolling product grid with region prices.
///
/// [params] narrows the list (search text, category, collection). The region
/// is added here, and the list reloads when the region or [params] change.
class ProductsList extends StatelessWidget {
  const ProductsList({
    this.params = const ProductListParams(),
    this.header,
    this.title,
    this.hideTitle = false,
    this.emptyMessage,
    super.key,
  });

  final ProductListParams params;

  /// Scrolls with the grid, above the title.
  final Widget? header;
  final String? title;
  final bool hideTitle;
  final String? emptyMessage;

  @override
  Widget build(BuildContext context) {
    final regionState = context.watch<RegionCubit>().state;
    final region = regionState.region;
    if (region == null) {
      return regionState.status == RegionStatus.failure
          ? ErrorView(
              message: regionState.error,
              onRetry: context.read<RegionCubit>().load,
            )
          : const Loader();
    }

    final effective = ProductListParams(
      regionId: region.id,
      fields: ProductApi.priceFields,
      order: '-created_at',
      q: params.q,
      categoryIds: params.categoryIds,
      collectionIds: params.collectionIds,
    );

    return BlocProvider(
      key: ValueKey(effective.toString()),
      create: (context) =>
          ProductListCubit(context.read<MedusaClient>(), effective)..load(),
      child: _ProductsListView(
        header: header,
        title: hideTitle ? null : (title ?? context.l10n.latestProducts),
        emptyMessage: emptyMessage,
      ),
    );
  }
}

class _ProductsListView extends StatefulWidget {
  const _ProductsListView({this.header, this.title, this.emptyMessage});

  final Widget? header;
  final String? title;
  final String? emptyMessage;

  @override
  State<_ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<_ProductsListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 300) {
      context.read<ProductListCubit>().loadMore();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductListCubit, ProductListState>(
      builder: (context, state) {
        final cubit = context.read<ProductListCubit>();
        if (state.status == ProductListStatus.loading) return const Loader();
        if (state.status == ProductListStatus.failure) {
          return ErrorView(onRetry: cubit.load);
        }

        return RefreshIndicator(
          onRefresh: cubit.refresh,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.header != null) widget.header!,
                      if (widget.title != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Text(
                            widget.title!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (state.products.isEmpty && widget.emptyMessage != null)
                SliverToBoxAdapter(child: EmptyMessage(widget.emptyMessage!)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 272,
                  ),
                  itemCount: state.products.length,
                  itemBuilder: (context, index) =>
                      ProductGridItem(product: state.products[index]),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 56,
                  child: state.isLoadingMore
                      ? const Center(
                          child: SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({required this.product, super.key});

  final StoreProduct product;

  @override
  Widget build(BuildContext context) {
    final price = cheapestPrice(product);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.push(AppRoutes.product(product.id)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              AppNetworkImage(
                url: product.thumbnail,
                height: 192,
                width: double.infinity,
                borderRadius: BorderRadius.circular(16),
              ),
              const Positioned(bottom: 8, right: 8, child: WishlistButton()),
            ],
          ),
          const SizedBox(height: 4),
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
    );
  }
}
