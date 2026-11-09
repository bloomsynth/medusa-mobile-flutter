import 'package:medusa_mobile/api/models/models.dart';

/// The display name for an ISO-2 code within the region's countries.
String countryName(String? countryCode, List<StoreRegionCountry> countries) {
  if (countryCode == null || countryCode.isEmpty) return '';
  final country = countries
      .where((c) => c.iso2.toLowerCase() == countryCode.toLowerCase())
      .firstOrNull;
  return country?.displayName ?? countryCode.toUpperCase();
}
