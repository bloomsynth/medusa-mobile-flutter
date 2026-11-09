import 'package:medusa_mobile/l10n/l10n.dart';

/// Form validators returning localized messages, the Zod schemas' counterpart.
abstract final class Validators {
  static final _email = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

  static String? required(String? value, String message) =>
      (value == null || value.trim().isEmpty) ? message : null;

  static String? email(AppLocalizations l10n, String? value) {
    if (value == null || !_email.hasMatch(value.trim())) {
      return l10n.invalidEmailAddress;
    }
    return null;
  }

  static String? checkoutEmail(AppLocalizations l10n, String? value) {
    if (value == null || !_email.hasMatch(value.trim())) {
      return l10n.pleaseEnterAValidEmail;
    }
    return null;
  }

  static String? password(AppLocalizations l10n, String? value, int min) {
    if (value == null || value.length < min) {
      return l10n.passwordMustBeAtLeastNCharacters(min);
    }
    return null;
  }
}
