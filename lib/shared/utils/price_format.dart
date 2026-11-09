import 'package:intl/intl.dart';

/// Formats a Medusa amount (already in major units for v2) as currency.
String formatAmount(
  num? amount,
  String? currencyCode, {
  String locale = 'en_US',
}) {
  if (amount == null) return '';
  if (currencyCode == null || currencyCode.trim().isEmpty) {
    return amount.toString();
  }
  return NumberFormat.simpleCurrency(
    locale: locale,
    name: currencyCode.toUpperCase(),
  ).format(amount);
}

/// Whole-number percentage saved between an original and a reduced amount.
int percentageDiff(num original, num calculated) {
  if (original == 0) return 0;
  return ((original - calculated) / original * 100).round();
}
