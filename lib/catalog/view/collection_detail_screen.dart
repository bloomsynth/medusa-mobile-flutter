import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/catalog/widgets/products_list.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class CollectionDetailScreen extends StatelessWidget {
  const CollectionDetailScreen({required this.collectionId, super.key});

  final String collectionId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchCubit<StoreCollection>(
        () => context.read<MedusaClient>().collection.retrieve(collectionId),
      )..load(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child:
              BlocBuilder<
                FetchCubit<StoreCollection>,
                FetchState<StoreCollection>
              >(
                builder: (context, state) {
                  final collection = state.data;
                  return Column(
                    children: [
                      Navbar(title: collection?.title),
                      const SizedBox(height: 16),
                      Expanded(
                        child: state.isLoading
                            ? const Loader()
                            : collection == null
                            ? ErrorView(
                                onRetry: context
                                    .read<FetchCubit<StoreCollection>>()
                                    .load,
                              )
                            : ProductsList(
                                params: ProductListParams(
                                  collectionIds: [collection.id],
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
