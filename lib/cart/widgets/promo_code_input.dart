import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// A collapsible promo code field and the promotions applied to the cart.
class PromoCodeInput extends StatefulWidget {
  const PromoCodeInput({super.key});

  @override
  State<PromoCodeInput> createState() => _PromoCodeInputState();
}

class _PromoCodeInputState extends State<PromoCodeInput> {
  final _controller = TextEditingController();
  bool _expanded = false;
  bool _loading = false;
  String? _error;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _apply() async {
    final code = _controller.text.trim();
    if (code.isEmpty || _loading) return;
    FocusScope.of(context).unfocus();
    final l10n = context.l10n;
    setState(() {
      _error = null;
      _loading = true;
    });
    try {
      final applied = await context.read<CartCubit>().applyPromoCode(code);
      if (!mounted) return;
      if (applied) {
        _controller.clear();
      } else {
        setState(() => _error = l10n.invalidPromoCode);
      }
    } on Object {
      if (mounted) setState(() => _error = l10n.failedToApplyPromotion);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _remove(String code) async {
    if (_loading) return;
    final l10n = context.l10n;
    setState(() => _loading = true);
    try {
      await context.read<CartCubit>().removePromoCode(code);
    } on Object {
      if (mounted) setState(() => _error = l10n.failedToRemovePromotion);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final promotions = context.select<CartCubit, List<StorePromotion>>(
      (cubit) => cubit.state.cart?.promotions ?? const [],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => setState(() => _expanded = !_expanded),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              l10n.addAPromoCode,
              style: TextStyle(color: colors.primary),
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.topCenter,
          child: !_expanded
              ? const SizedBox(width: double.infinity)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AppInput(
                            controller: _controller,
                            placeholder: l10n.enterPromoCode,
                            textCapitalization: TextCapitalization.characters,
                            onChanged: (_) {
                              if (_error != null) setState(() => _error = null);
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 96,
                          child: AppButton(
                            variant: AppButtonVariant.secondary,
                            title: l10n.apply,
                            loading: _loading,
                            onPressed: _apply,
                          ),
                        ),
                      ],
                    ),
                    if (_error != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          _error!,
                          style: TextStyle(color: colors.danger),
                        ),
                      ),
                  ],
                ),
        ),
        const SizedBox(height: 16),
        if (promotions.isNotEmpty) ...[
          Text(
            '${l10n.appliedPromotions}:',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          for (final (index, promotion) in promotions.indexed)
            _PromotionRow(
              index: index,
              promotion: promotion,
              onRemove: promotion.code == null
                  ? null
                  : () => _remove(promotion.code!),
            ),
        ],
      ],
    );
  }
}

class _PromotionRow extends StatelessWidget {
  const _PromotionRow({
    required this.index,
    required this.promotion,
    required this.onRemove,
  });

  final int index;
  final StorePromotion promotion;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final method = promotion.applicationMethod;
    final value = method?.value;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: colors.backgroundSecondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    QuantityBadge(
                      quantity: index + 1,
                      variant: promotion.isAutomatic
                          ? QuantityBadgeVariant.secondary
                          : QuantityBadgeVariant.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      promotion.code ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                if (value != null)
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      method?.type == 'percentage'
                          ? '$value%'
                          : formatAmount(value, method?.currencyCode),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
              ],
            ),
          ),
          if (onRemove != null)
            RoundedButton(
              size: RoundedButtonSize.sm,
              onPressed: onRemove,
              child: Icon(Icons.close, size: 12, color: colors.primary),
            ),
        ],
      ),
    );
  }
}
