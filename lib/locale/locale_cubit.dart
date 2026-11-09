import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:medusa_mobile/config/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The app language. A saved choice wins over `DEFAULT_LOCALE`.
class LocaleCubit extends Cubit<Locale> {
  LocaleCubit(this._prefs) : super(_restore(_prefs));

  static const _key = 'locale';

  static const supportedLocales = [Locale('en', 'US'), Locale('id', 'ID')];

  final SharedPreferences _prefs;

  static Locale _restore(SharedPreferences prefs) =>
      parse(prefs.getString(_key)) ??
      parse(Env.defaultLocale) ??
      supportedLocales.first;

  /// Reads `en-US` style tags into a supported locale, or null.
  static Locale? parse(String? tag) {
    if (tag == null || tag.isEmpty) return null;
    final language = tag.split(RegExp('[-_]')).first.toLowerCase();
    for (final locale in supportedLocales) {
      if (locale.languageCode == language) return locale;
    }
    return null;
  }

  /// `en-US` style tag for the current locale.
  static String tag(Locale locale) => locale.countryCode == null
      ? locale.languageCode
      : '${locale.languageCode}-${locale.countryCode}';

  Future<void> select(Locale locale) async {
    emit(locale);
    await _prefs.setString(_key, tag(locale));
  }
}
