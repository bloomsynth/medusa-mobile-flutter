import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The product screen's bottom bar: "Add to cart", with a "View cart" button
/// that slides in once the product is in the cart.
class AnimatedCartButton extends StatefulWidget {
  const AnimatedCartButton({
    required this.productId,
    required this.selectedVariantId,
    required this.inStock,
    required this.hasSelectedAllOptions,
    super.key,
  });

  final String productId;

  /// Null until the selected options match a variant.
  final String? selectedVariantId;
  final bool inStock;
  final bool hasSelectedAllOptions;

  static const _viewCartWidth = 192.0;

  @override
  State<AnimatedCartButton> createState() => _AnimatedCartButtonState();
}

class _AnimatedCartButtonState extends State<AnimatedCartButton> {
  bool _adding = false;

  Future<void> _addToCart() async {
    final variantId = widget.selectedVariantId;
    if (variantId == null || !widget.inStock) return;
    setState(() => _adding = true);
    await context.read<CartCubit>().addToCart(variantId, 1);
    if (mounted) setState(() => _adding = false);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final quantity = context.select<CartCubit, int>(
      (cubit) => cubit.state.cart?.quantityOfProduct(widget.productId) ?? 0,
    );
    final visible = quantity > 0;
    const duration = Duration(milliseconds: 300);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          AnimatedContainer(
            duration: duration,
            curve: Curves.easeInOut,
            width: visible ? AnimatedCartButton._viewCartWidth : 0,
            height: 56,
            margin: EdgeInsets.only(right: visible ? 8 : 0),
            child: AnimatedOpacity(
              duration: duration,
              opacity: visible ? 1 : 0,
              child: ClipRect(
                child: OverflowBox(
                  alignment: Alignment.centerLeft,
                  minWidth: AnimatedCartButton._viewCartWidth,
                  maxWidth: AnimatedCartButton._viewCartWidth,
                  child: _ViewCart(quantity: quantity),
                ),
              ),
            ),
          ),
          Expanded(
            child: AppButton(
              title: widget.hasSelectedAllOptions && !widget.inStock
                  ? l10n.outOfStock
                  : l10n.addToCart,
              onPressed: _addToCart,
              disabled: widget.selectedVariantId == null || !widget.inStock,
              loading: _adding,
            ),
          ),
        ],
      ),
    );
  }
}

class _ViewCart extends StatefulWidget {
  const _ViewCart({required this.quantity});

  final int quantity;

  @override
  State<_ViewCart> createState() => _ViewCartState();
}

class _ViewCartState extends State<_ViewCart>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 400),
  );
  late final Animation<double> _scale = TweenSequence<double>([
    TweenSequenceItem(tween: Tween(begin: 1, end: 1.3), weight: 1),
    TweenSequenceItem(tween: Tween(begin: 1.3, end: 1), weight: 1),
  ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

  @override
  void didUpdateWidget(_ViewCart oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Bump the badge when another one is added, not when one is removed.
    if (oldWidget.quantity > 0 && widget.quantity > oldWidget.quantity) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final label = context.l10n.viewCart;
    return Semantics(
      button: true,
      label: label,
      child: Material(
        color: colors.background,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: widget.quantity == 0
              ? null
              : () => context.push(AppRoutes.cart),
          child: Container(
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: colors.border),
            ),
            child: ExcludeSemantics(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: colors.content,
                      ),
                      Positioned(
                        top: -10,
                        right: -12,
                        child: ScaleTransition(
                          scale: _scale,
                          child: QuantityBadge(quantity: widget.quantity),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Text(
                    label,
                    maxLines: 1,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
