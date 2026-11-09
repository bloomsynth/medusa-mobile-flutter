// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreRegion _$StoreRegionFromJson(Map<String, dynamic> json) => _StoreRegion(
  id: json['id'] as String,
  name: json['name'] as String,
  currencyCode: json['currency_code'] as String,
  countries:
      (json['countries'] as List<dynamic>?)
          ?.map((e) => StoreRegionCountry.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StoreRegionToJson(_StoreRegion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currency_code': instance.currencyCode,
      'countries': instance.countries.map((e) => e.toJson()).toList(),
    };

_StoreRegionCountry _$StoreRegionCountryFromJson(Map<String, dynamic> json) =>
    _StoreRegionCountry(
      iso2: json['iso_2'] as String,
      iso3: json['iso_3'] as String?,
      name: json['name'] as String?,
      displayName: json['display_name'] as String?,
      numCode: json['num_code'] as String?,
    );

Map<String, dynamic> _$StoreRegionCountryToJson(_StoreRegionCountry instance) =>
    <String, dynamic>{
      'iso_2': instance.iso2,
      'iso_3': ?instance.iso3,
      'name': ?instance.name,
      'display_name': ?instance.displayName,
      'num_code': ?instance.numCode,
    };
