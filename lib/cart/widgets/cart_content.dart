import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/cart/widgets/promo_code_input.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// `cart` lets the customer change quantities and promo codes; `checkout` is
/// the read-only review.
enum CartContentMode { cart, checkout }

class CartContent extends StatelessWidget {
  const CartContent({required this.cart, required this.mode, super.key});

  final StoreCart cart;
  final CartContentMode mode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final item in cart.sortedItems)
          _CartItem(
            key: ValueKey(item.id),
            item: item,
            currencyCode: cart.currencyCode,
            mode: mode,
          ),
        const SizedBox(height: 16),
        if (mode == CartContentMode.cart) const PromoCodeInput(),
        CartSummary(cart: cart),
      ],
    );
  }
}

class _CartItem extends StatelessWidget {
  const _CartItem({
    required this.item,
    required this.currencyCode,
    required this.mode,
    super.key,
  });

  final StoreCartLineItem item;
  final String currencyCode;
  final CartContentMode mode;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colors.backgroundSecondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          AppNetworkImage(url: item.thumbnail, width: 80, height: 80),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productTitle ?? item.title ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (item.variantTitle != null && item.variantTitle!.isNotEmpty)
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      '${context.l10n.variant}: ${item.variantTitle}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LineItemQuantity(item: item, mode: mode),
                    LineItemPrice(
                      unitPrice: item.unitPrice,
                      quantity: item.quantity,
                      total: item.total,
                      originalTotal: item.originalTotal,
                      currencyCode: currencyCode,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LineItemQuantity extends StatefulWidget {
  const LineItemQuantity({required this.item, required this.mode, super.key});

  final StoreCartLineItem item;
  final CartContentMode mode;

  @override
  State<LineItemQuantity> createState() => _LineItemQuantityState();
}

class _LineItemQuantityState extends State<LineItemQuantity> {
  bool _updating = false;

  Future<void> _update(int quantity) async {
    if (_updating) return;
    setState(() => _updating = true);
    await context.read<CartCubit>().updateLineItem(widget.item.id, quantity);
    if (mounted) setState(() => _updating = false);
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final quantity = widget.item.quantity;

    if (widget.mode == CartContentMode.checkout) {
      return Text(
        '${context.l10n.qty}: $quantity',
        style: const TextStyle(fontSize: 16),
      );
    }

    Widget stepper(IconData icon, VoidCallback onTap) => InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Icon(icon, size: 14, color: colors.primary),
      ),
    );

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: colors.primary, width: 0.5),
          ),
          child: Row(
            children: [
              stepper(Icons.remove, () => _update(quantity - 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text('$quantity', style: const TextStyle(fontSize: 16)),
              ),
              stepper(Icons.add, () => _update(quantity + 1)),
            ],
          ),
        ),
        const SizedBox(width: 8),
        if (_updating)
          const Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox.square(
              dimension: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          )
        else
          InkWell(
            onTap: () => _update(0),
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.delete_outline,
                size: 18,
                color: colors.content.withValues(alpha: 0.75),
              ),
            ),
          ),
      ],
    );
  }
}

/// A line's price, with the original struck out when a promotion reduced it.
class LineItemPrice extends StatelessWidget {
  const LineItemPrice({
    required this.unitPrice,
    required this.quantity,
    required this.currencyCode,
    this.total,
    this.originalTotal,
    super.key,
  });

  final num unitPrice;
  final int quantity;
  final num? total;
  final num? originalTotal;
  final String currencyCode;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final lineTotal = total ?? unitPrice * quantity;
    final original = originalTotal ?? lineTotal;
    final reduced = original > 0 && lineTotal < original;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (reduced) ...[
          Text.rich(
            TextSpan(
              text: '${context.l10n.original}: ',
              children: [
                TextSpan(
                  text: formatAmount(original, currencyCode),
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '-${percentageDiff(original, lineTotal)}%',
            style: TextStyle(color: colors.primary),
          ),
        ],
        Text(
          formatAmount(lineTotal, currencyCode),
          style: TextStyle(
            fontSize: 16,
            color: reduced ? colors.primary : colors.content,
          ),
        ),
      ],
    );
  }
}

class CartSummary extends StatelessWidget {
  const CartSummary({required this.cart, super.key});

  final StoreCart cart;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final currency = cart.currencyCode;

    Widget row(String label, String value, {Color? valueColor}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(opacity: 0.8, child: Text(label)),
          Text(value, style: TextStyle(fontSize: 16, color: valueColor)),
        ],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.summary, style: const TextStyle(fontSize: 24)),
        const SizedBox(height: 16),
        Divider(color: colors.border),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              row(l10n.subtotal, formatAmount(cart.itemSubtotal, currency)),
              row(l10n.shipping, formatAmount(cart.shippingTotal, currency)),
              row(l10n.taxes, formatAmount(cart.taxTotal, currency)),
              if (cart.discountTotal > 0)
                row(
                  l10n.discount,
                  '-${formatAmount(cart.discountTotal, currency)}',
                  valueColor: colors.success,
                ),
            ],
          ),
        ),
        Divider(color: colors.border),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(opacity: 0.8, child: Text(l10n.total)),
              Text(
                formatAmount(cart.total, currency),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Divider(color: colors.border),
      ],
    );
  }
}
