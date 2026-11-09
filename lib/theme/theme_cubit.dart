import 'package:bloc/bloc.dart';
import 'package:medusa_mobile/theme/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Which of the built-in themes is active. Light or dark follows the system.
class ThemeCubit extends Cubit<AppThemeName> {
  ThemeCubit(this._prefs) : super(_restore(_prefs));

  static const _key = 'theme_name';

  final SharedPreferences _prefs;

  static AppThemeName _restore(SharedPreferences prefs) {
    final saved = prefs.getString(_key);
    return AppThemeName.values.firstWhere(
      (name) => name.name == saved,
      orElse: () => AppThemeName.defaultTheme,
    );
  }

  Future<void> select(AppThemeName name) async {
    emit(name);
    await _prefs.setString(_key, name.name);
  }

  /// Cycles to the next theme, the way the Home switcher button does.
  Future<void> next() {
    const names = AppThemeName.values;
    return select(names[(names.indexOf(state) + 1) % names.length]);
  }
}
