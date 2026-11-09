import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';

class ShippingOptionsState extends Equatable {
  const ShippingOptionsState({
    this.isLoading = true,
    this.loadFailed = false,
    this.options = const [],
    this.calculatedPrices = const {},
    this.isCalculatingPrices = false,
    this.selectedOptionId,
    this.updatingOptionId,
    this.updateFailed = false,
  });

  final bool isLoading;
  final bool loadFailed;
  final List<StoreShippingOption> options;

  /// Prices of `calculated` options, by option id.
  final Map<String, num> calculatedPrices;
  final bool isCalculatingPrices;
  final String? selectedOptionId;

  /// The option being saved on the cart, if any.
  final String? updatingOptionId;
  final bool updateFailed;

  bool get isUpdating => updatingOptionId != null;

  num? amountOf(StoreShippingOption option) =>
      option.isCalculated ? calculatedPrices[option.id] : option.amount;

  ShippingOptionsState copyWith({
    bool? isLoading,
    bool? loadFailed,
    List<StoreShippingOption>? options,
    Map<String, num>? calculatedPrices,
    bool? isCalculatingPrices,
    String? selectedOptionId,
    String? Function()? updatingOptionId,
    bool? updateFailed,
  }) => ShippingOptionsState(
    isLoading: isLoading ?? this.isLoading,
    loadFailed: loadFailed ?? this.loadFailed,
    options: options ?? this.options,
    calculatedPrices: calculatedPrices ?? this.calculatedPrices,
    isCalculatingPrices: isCalculatingPrices ?? this.isCalculatingPrices,
    selectedOptionId: selectedOptionId ?? this.selectedOptionId,
    updatingOptionId: updatingOptionId == null
        ? this.updatingOptionId
        : updatingOptionId(),
    updateFailed: updateFailed ?? this.updateFailed,
  );

  @override
  List<Object?> get props => [
    isLoading,
    loadFailed,
    options,
    calculatedPrices,
    isCalculatingPrices,
    selectedOptionId,
    updatingOptionId,
    updateFailed,
  ];
}

/// The delivery step: lists the cart's shipping options, prices the
/// calculated ones and saves the customer's choice on the cart.
class ShippingOptionsCubit extends SafeCubit<ShippingOptionsState> {
  ShippingOptionsCubit(this._client, this._cartCubit)
    : super(
        ShippingOptionsState(
          selectedOptionId: _cartCubit.state.cart?.shippingMethods
              .map((method) => method.shippingOptionId)
              .nonNulls
              .firstOrNull,
        ),
      );

  final MedusaClient _client;
  final CartCubit _cartCubit;

  Future<void> load() async {
    final cartId = _cartCubit.state.cart?.id;
    if (cartId == null) {
      emit(state.copyWith(isLoading: false, loadFailed: true));
      return;
    }
    emit(state.copyWith(isLoading: true, loadFailed: false));
    try {
      final options = await _client.fulfillment.listCartOptions(cartId);
      emit(state.copyWith(isLoading: false, options: options));
      await _calculatePrices(cartId, options);
    } on Exception catch (error) {
      log('Failed to load shipping options: $error');
      emit(state.copyWith(isLoading: false, loadFailed: true));
    }
  }

  Future<void> _calculatePrices(
    String cartId,
    List<StoreShippingOption> options,
  ) async {
    final calculated = options.where((option) => option.isCalculated).toList();
    if (calculated.isEmpty) return;
    emit(state.copyWith(isCalculatingPrices: true));
    try {
      final priced = await Future.wait(
        calculated.map(
          (option) => _client.fulfillment.calculate(option.id, cartId: cartId),
        ),
      );
      emit(
        state.copyWith(
          isCalculatingPrices: false,
          calculatedPrices: {
            for (final option in priced)
              if (option.amount != null) option.id: option.amount!,
          },
        ),
      );
    } on Exception catch (error) {
      log('Failed to calculate shipping prices: $error');
      emit(state.copyWith(isCalculatingPrices: false));
    }
  }

  /// Saves the option on the cart. One update at a time.
  Future<void> select(String optionId) async {
    if (state.isUpdating || state.selectedOptionId == optionId) return;
    emit(state.copyWith(updatingOptionId: () => optionId, updateFailed: false));
    try {
      await _cartCubit.setShippingMethod(optionId);
      emit(
        state.copyWith(
          selectedOptionId: optionId,
          updatingOptionId: () => null,
        ),
      );
    } on Object catch (error) {
      log('Failed to update shipping method: $error');
      emit(state.copyWith(updatingOptionId: () => null, updateFailed: true));
    }
  }
}
