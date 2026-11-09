import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

enum AppButtonVariant { primary, secondary }

/// The 56 px rounded call-to-action used across the storefront.
class AppButton extends StatelessWidget {
  const AppButton({
    required this.title,
    this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.loading = false,
    this.disabled = false,
    super.key,
  });

  final String title;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool loading;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final isPrimary = variant == AppButtonVariant.primary;
    final inactive = disabled || loading;

    final background = disabled
        ? colors.border
        : isPrimary
        ? colors.primary
        : colors.background;
    final foreground = disabled
        ? colors.muted
        : isPrimary
        ? colors.contentSecondary
        : colors.content;

    return SizedBox(
      height: 56,
      width: double.infinity,
      child: Material(
        color: background,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: inactive ? null : onPressed,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: isPrimary ? null : Border.all(color: colors.border),
            ),
            child: loading
                ? SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: foreground,
                    ),
                  )
                : Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: foreground,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
