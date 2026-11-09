import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/catalog/widgets/catalog_list_tile.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (context) => FetchCubit<List<StoreProductCategory>>(
        context.read<MedusaClient>().category.list,
      )..load(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: Column(
            children: [
              Navbar(title: l10n.categories, showBackButton: false),
              const Divider(),
              Expanded(
                child:
                    BlocBuilder<
                      FetchCubit<List<StoreProductCategory>>,
                      FetchState<List<StoreProductCategory>>
                    >(
                      builder: (context, state) {
                        final cubit = context
                            .read<FetchCubit<List<StoreProductCategory>>>();
                        if (state.isLoading) return const Loader();
                        if (state.status == FetchStatus.failure) {
                          return ErrorView(onRetry: cubit.load);
                        }
                        final categories = state.data ?? const [];
                        return RefreshIndicator(
                          onRefresh: cubit.refresh,
                          child: categories.isEmpty
                              ? ListView(
                                  children: [
                                    EmptyMessage(l10n.noCategoriesFound),
                                  ],
                                )
                              : ListView.builder(
                                  itemCount: categories.length,
                                  itemBuilder: (context, index) {
                                    final category = categories[index];
                                    return CatalogListTile(
                                      title: category.name,
                                      subtitle: category.description,
                                      onTap: () => context.push(
                                        AppRoutes.category(category.id),
                                      ),
                                    );
                                  },
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
