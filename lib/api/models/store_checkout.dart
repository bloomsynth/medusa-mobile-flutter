import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_checkout.freezed.dart';
part 'store_checkout.g.dart';

/// A shipping option offered for a cart (`GET /store/shipping-options`).
@freezed
abstract class StoreShippingOption with _$StoreShippingOption {
  const factory StoreShippingOption({
    required String id,
    required String name,
    @Default('flat') String priceType,
    num? amount,
  }) = _StoreShippingOption;

  const StoreShippingOption._();

  factory StoreShippingOption.fromJson(Map<String, dynamic> json) =>
      _$StoreShippingOptionFromJson(json);

  /// Calculated options get their price from
  /// `POST /store/shipping-options/:id/calculate`.
  bool get isCalculated => priceType == 'calculated';
}

/// A payment provider enabled for a region.
@freezed
abstract class StorePaymentProvider with _$StorePaymentProvider {
  const factory StorePaymentProvider({
    required String id,
    @Default(true) bool isEnabled,
  }) = _StorePaymentProvider;

  factory StorePaymentProvider.fromJson(Map<String, dynamic> json) =>
      _$StorePaymentProviderFromJson(json);
}
