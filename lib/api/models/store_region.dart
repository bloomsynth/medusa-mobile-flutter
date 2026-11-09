import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_region.freezed.dart';
part 'store_region.g.dart';

@freezed
abstract class StoreRegion with _$StoreRegion {
  const factory StoreRegion({
    required String id,
    required String name,
    required String currencyCode,
    @Default([]) List<StoreRegionCountry> countries,
  }) = _StoreRegion;

  factory StoreRegion.fromJson(Map<String, dynamic> json) =>
      _$StoreRegionFromJson(json);
}

@freezed
abstract class StoreRegionCountry with _$StoreRegionCountry {
  const factory StoreRegionCountry({
    @JsonKey(name: 'iso_2') required String iso2,
    @JsonKey(name: 'iso_3') String? iso3,
    String? name,
    String? displayName,
    String? numCode,
  }) = _StoreRegionCountry;

  factory StoreRegionCountry.fromJson(Map<String, dynamic> json) =>
      _$StoreRegionCountryFromJson(json);
}
