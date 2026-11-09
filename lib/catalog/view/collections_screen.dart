import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/catalog/widgets/catalog_list_tile.dart';
import 'package:medusa_mobile/catalog/widgets/featured_collection.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class CollectionsScreen extends StatelessWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (context) => FetchCubit<List<StoreCollection>>(
        context.read<MedusaClient>().collection.list,
      )..load(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: Column(
            children: [
              Navbar(title: l10n.collections, showBackButton: false),
              const Divider(),
              Expanded(
                child:
                    BlocBuilder<
                      FetchCubit<List<StoreCollection>>,
                      FetchState<List<StoreCollection>>
                    >(
                      builder: (context, state) {
                        final cubit = context
                            .read<FetchCubit<List<StoreCollection>>>();
                        if (state.isLoading) return const Loader();
                        if (state.status == FetchStatus.failure) {
                          return ErrorView(onRetry: cubit.load);
                        }
                        final collections = state.data ?? const [];
                        return RefreshIndicator(
                          onRefresh: cubit.refresh,
                          child: ListView(
                            children: [
                              if (collections.isEmpty)
                                EmptyMessage(l10n.noCollectionsFound),
                              for (final collection in collections)
                                CatalogListTile(
                                  title: collection.title,
                                  onTap: () => context.push(
                                    AppRoutes.collection(collection.id),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  24,
                                  20,
                                  0,
                                ),
                                child: FeaturedCollection(
                                  title: l10n.trendingProducts,
                                  showCta: false,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
