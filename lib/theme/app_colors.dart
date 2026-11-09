import 'package:flutter/material.dart';

/// The five theme tokens the storefront is drawn with, plus neutral greys.
///
/// They mirror the NativeWind variables of the React Native app
/// (`primary`, `background`, `background-secondary`, `content`,
/// `content-secondary`), so screens can be compared side by side.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.background,
    required this.backgroundSecondary,
    required this.content,
    required this.contentSecondary,
    this.border = const Color(0xFFD1D5DB),
    this.borderLight = const Color(0xFFE5E7EB),
    this.muted = const Color(0xFF6B7280),
    this.success = const Color(0xFF22C55E),
    this.danger = const Color(0xFFEF4444),
  });

  final Color primary;
  final Color background;
  final Color backgroundSecondary;
  final Color content;
  final Color contentSecondary;
  final Color border;
  final Color borderLight;
  final Color muted;
  final Color success;
  final Color danger;

  @override
  AppColors copyWith({
    Color? primary,
    Color? background,
    Color? backgroundSecondary,
    Color? content,
    Color? contentSecondary,
    Color? border,
    Color? borderLight,
    Color? muted,
    Color? success,
    Color? danger,
  }) => AppColors(
    primary: primary ?? this.primary,
    background: background ?? this.background,
    backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
    content: content ?? this.content,
    contentSecondary: contentSecondary ?? this.contentSecondary,
    border: border ?? this.border,
    borderLight: borderLight ?? this.borderLight,
    muted: muted ?? this.muted,
    success: success ?? this.success,
    danger: danger ?? this.danger,
  );

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other == null) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary: Color.lerp(
        backgroundSecondary,
        other.backgroundSecondary,
        t,
      )!,
      content: Color.lerp(content, other.content, t)!,
      contentSecondary: Color.lerp(
        contentSecondary,
        other.contentSecondary,
        t,
      )!,
      border: Color.lerp(border, other.border, t)!,
      borderLight: Color.lerp(borderLight, other.borderLight, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      success: Color.lerp(success, other.success, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
