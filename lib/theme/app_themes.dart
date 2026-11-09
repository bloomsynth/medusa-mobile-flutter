import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The built-in themes. Add a name and its two color sets to ship another.
enum AppThemeName { defaultTheme, vintage, funky, eco }

class ThemeColorSet {
  const ThemeColorSet({required this.light, required this.dark});
  final AppColors light;
  final AppColors dark;
}

const themeColorSets = <AppThemeName, ThemeColorSet>{
  AppThemeName.defaultTheme: ThemeColorSet(
    light: AppColors(
      primary: Color(0xFF8E6CEF),
      background: Colors.white,
      backgroundSecondary: Color(0xFFF0F3F8),
      content: Color(0xFF18181B),
      contentSecondary: Colors.white,
    ),
    dark: AppColors(
      primary: Color(0xFF8E6CEF),
      background: Color(0xFF1A1A1D),
      backgroundSecondary: Color(0xFF3C3D37),
      content: Colors.white,
      contentSecondary: Colors.white,
    ),
  ),
  AppThemeName.vintage: ThemeColorSet(
    light: AppColors(
      primary: Color(0xFFC96868),
      background: Color(0xFFFFF4EA),
      backgroundSecondary: Colors.white,
      content: Colors.black,
      contentSecondary: Colors.white,
    ),
    dark: AppColors(
      primary: Color(0xFFC96868),
      background: Color(0xFF131010),
      backgroundSecondary: Color(0xFF543A14),
      content: Colors.white,
      contentSecondary: Colors.white,
    ),
  ),
  AppThemeName.funky: ThemeColorSet(
    light: AppColors(
      primary: Color(0xFF7EACB5),
      background: Color(0xFFFADFA1),
      backgroundSecondary: Color(0xFFFFF4EA),
      content: Colors.black,
      contentSecondary: Colors.white,
    ),
    dark: AppColors(
      primary: Color(0xFF7EACB5),
      background: Color(0xFF131010),
      backgroundSecondary: Color(0xFF543A14),
      content: Colors.white,
      contentSecondary: Colors.white,
    ),
  ),
  AppThemeName.eco: ThemeColorSet(
    light: AppColors(
      primary: Color(0xFF77B254),
      background: Color(0xFFE1FFBB),
      backgroundSecondary: Color(0xFFF5F5F5),
      content: Colors.black,
      contentSecondary: Colors.white,
    ),
    dark: AppColors(
      primary: Color(0xFF77B254),
      background: Color(0xFF16423C),
      backgroundSecondary: Color(0xFF659287),
      content: Colors.white,
      contentSecondary: Colors.white,
    ),
  ),
};

/// Font families bundled in `pubspec.yaml`.
abstract final class AppFonts {
  static const display = 'Audiowide';
  static const content = 'Lato';
}

/// Builds the Material theme for a color set.
ThemeData buildAppTheme(AppColors colors, Brightness brightness) {
  final scheme = ColorScheme(
    brightness: brightness,
    primary: colors.primary,
    onPrimary: colors.contentSecondary,
    secondary: colors.primary,
    onSecondary: colors.contentSecondary,
    error: colors.danger,
    onError: Colors.white,
    surface: colors.background,
    onSurface: colors.content,
    surfaceContainerHighest: colors.backgroundSecondary,
    outline: colors.border,
    outlineVariant: colors.borderLight,
  );

  final base = ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: scheme,
    fontFamily: AppFonts.content,
    scaffoldBackgroundColor: colors.background,
    splashFactory: InkSparkle.splashFactory,
  );

  return base.copyWith(
    extensions: [colors],
    textTheme: base.textTheme.apply(
      bodyColor: colors.content,
      displayColor: colors.content,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: colors.background,
      foregroundColor: colors.content,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    dividerTheme: DividerThemeData(color: colors.borderLight, space: 1),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? colors.primary
            : colors.contentSecondary,
      ),
      trackColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? colors.primary.withValues(alpha: 0.5)
            : colors.border,
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: colors.primary),
    textSelectionTheme: TextSelectionThemeData(cursorColor: colors.primary),
  );
}

/// The heading style set in Audiowide (the React Native `display` text).
TextStyle displayTextStyle(BuildContext context, {double fontSize = 20}) =>
    TextStyle(
      fontFamily: AppFonts.display,
      fontSize: fontSize,
      color: context.colors.content,
    );
