import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

enum RoundedButtonSize { sm, md, lg }

/// A circular, elevated icon button.
class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.child,
    this.onPressed,
    this.size = RoundedButtonSize.md,
    this.color,
    super.key,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final RoundedButtonSize size;
  final Color? color;

  double get _dimension => switch (size) {
    RoundedButtonSize.sm => 24,
    RoundedButtonSize.md => 48,
    RoundedButtonSize.lg => 56,
  };

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? context.colors.contentSecondary,
      shape: const CircleBorder(),
      elevation: 2,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: SizedBox.square(
          dimension: _dimension,
          child: Center(child: child),
        ),
      ),
    );
  }
}
