import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// A padded rounded surface on the primary background.
class AppCard extends StatelessWidget {
  const AppCard({required this.child, this.padding, super.key});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
