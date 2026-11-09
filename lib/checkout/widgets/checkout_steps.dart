import 'package:flutter/material.dart';
import 'package:medusa_mobile/checkout/models/checkout_models.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The step indicator. Completed steps can be tapped to go back.
class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({
    required this.currentStep,
    required this.onStepPressed,
    super.key,
  });

  final CheckoutStep currentStep;
  final ValueChanged<CheckoutStep> onStepPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final steps = [
      (CheckoutStep.address, l10n.address, Icons.place_outlined),
      (CheckoutStep.delivery, l10n.delivery, Icons.inbox_outlined),
      (
        CheckoutStep.payment,
        l10n.payment,
        Icons.account_balance_wallet_outlined,
      ),
      (CheckoutStep.review, l10n.review, Icons.fact_check_outlined),
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: Row(
        children: [
          for (final (index, (step, label, icon)) in steps.indexed) ...[
            if (index > 0)
              Expanded(
                child: Container(
                  height: 1,
                  margin: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                  color: currentStep.index >= index
                      ? colors.primary
                      : colors.border,
                ),
              ),
            _Step(
              label: label,
              icon: icon,
              isActive: step == currentStep,
              isPast: currentStep.index > index,
              onTap: () => onStepPressed(step),
            ),
          ],
        ],
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({
    required this.label,
    required this.icon,
    required this.isActive,
    required this.isPast,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool isActive;
  final bool isPast;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final reached = isActive || isPast;
    return InkWell(
      onTap: isPast ? onTap : null,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Column(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive
                    ? colors.primary
                    : isPast
                    ? colors.primary.withValues(alpha: 0.8)
                    : colors.border,
              ),
              child: Icon(
                icon,
                size: 16,
                color: reached ? colors.contentSecondary : Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isActive ? colors.primary : colors.muted,
                fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A bordered, radio-style row used by the delivery and payment steps.
class CheckoutOptionTile extends StatelessWidget {
  const CheckoutOptionTile({
    required this.label,
    required this.selected,
    required this.onTap,
    this.trailing,
    super.key,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selected ? colors.primary : colors.borderLight,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: selected ? colors.primary : colors.border,
                ),
              ),
              child: selected
                  ? Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.primary,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 8),
            Expanded(child: Text(label)),
            ?trailing,
          ],
        ),
      ),
    );
  }
}
