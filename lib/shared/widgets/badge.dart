import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

enum QuantityBadgeVariant { primary, secondary }

/// A 20 px circle with a count.
class QuantityBadge extends StatelessWidget {
  const QuantityBadge({
    required this.quantity,
    this.variant = QuantityBadgeVariant.primary,
    super.key,
  });

  final int quantity;
  final QuantityBadgeVariant variant;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final isPrimary = variant == QuantityBadgeVariant.primary;
    return Container(
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isPrimary ? colors.primary : colors.background,
        border: isPrimary ? null : Border.all(color: colors.border),
      ),
      child: Text(
        '$quantity',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: isPrimary ? colors.contentSecondary : colors.content,
        ),
      ),
    );
  }
}
