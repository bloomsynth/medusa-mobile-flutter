import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';

enum ProductListStatus { loading, success, failure }

class ProductListState extends Equatable {
  const ProductListState({
    this.status = ProductListStatus.loading,
    this.products = const [],
    this.hasMore = true,
    this.isLoadingMore = false,
  });

  final ProductListStatus status;
  final List<StoreProduct> products;
  final bool hasMore;
  final bool isLoadingMore;

  ProductListState copyWith({
    ProductListStatus? status,
    List<StoreProduct>? products,
    bool? hasMore,
    bool? isLoadingMore,
  }) => ProductListState(
    status: status ?? this.status,
    products: products ?? this.products,
    hasMore: hasMore ?? this.hasMore,
    isLoadingMore: isLoadingMore ?? this.isLoadingMore,
  );

  @override
  List<Object?> get props => [status, products, hasMore, isLoadingMore];
}

/// A paginated product list for one set of filters. Create a new cubit when
/// the filters (region, search text, category) change.
class ProductListCubit extends SafeCubit<ProductListState> {
  ProductListCubit(this._client, this.params) : super(const ProductListState());

  static const pageSize = 10;

  final MedusaClient _client;
  final ProductListParams params;

  Future<List<StoreProduct>> _page(int offset) async {
    final response = await _client.product.list(
      params.copyWith(limit: pageSize, offset: offset),
    );
    return response.products;
  }

  Future<void> load() async {
    emit(const ProductListState());
    await refresh();
  }

  Future<void> refresh() async {
    try {
      final products = await _page(0);
      emit(
        ProductListState(
          status: ProductListStatus.success,
          products: products,
          hasMore: products.length >= pageSize,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: ProductListStatus.failure));
    }
  }

  Future<void> loadMore() async {
    if (!state.hasMore ||
        state.isLoadingMore ||
        state.status != ProductListStatus.success) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final products = await _page(state.products.length);
      emit(
        state.copyWith(
          products: [...state.products, ...products],
          hasMore: products.length >= pageSize,
          isLoadingMore: false,
        ),
      );
    } on Exception {
      emit(state.copyWith(isLoadingMore: false));
    }
  }
}
