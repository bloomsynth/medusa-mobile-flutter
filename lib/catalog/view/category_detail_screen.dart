import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/catalog/widgets/products_list.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({required this.categoryId, super.key});

  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchCubit<StoreProductCategory>(
        () => context.read<MedusaClient>().category.retrieve(categoryId),
      )..load(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child:
              BlocBuilder<
                FetchCubit<StoreProductCategory>,
                FetchState<StoreProductCategory>
              >(
                builder: (context, state) {
                  final category = state.data;
                  return Column(
                    children: [
                      Navbar(title: category?.name),
                      const SizedBox(height: 16),
                      Expanded(
                        child: state.isLoading
                            ? const Loader()
                            : category == null
                            ? ErrorView(
                                onRetry: context
                                    .read<FetchCubit<StoreProductCategory>>()
                                    .load,
                              )
                            : ProductsList(
                                params: ProductListParams(
                                  categoryIds: [category.id],
                                ),
                                hideTitle: true,
                              ),
                      ),
                    ],
                  );
                },
              ),
        ),
      ),
    );
  }
}
