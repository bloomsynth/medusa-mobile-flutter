import 'package:flutter/material.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/widgets/cart_content.dart';
import 'package:medusa_mobile/checkout/models/checkout_models.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The provider the summary shows: the one picked on this screen, otherwise
/// the cart's pending or authorized session. The cart's payment collection can
/// lag behind the selection, so it is only the fallback.
String? reviewPaymentProviderId(StoreCart cart, String? selectedProviderId) {
  if (selectedProviderId != null && selectedProviderId.isNotEmpty) {
    return selectedProviderId;
  }
  return cart.paymentCollection?.paymentSessions
      .where((s) => s.status == 'pending' || s.status == 'authorized')
      .firstOrNull
      ?.providerId;
}

class ReviewStep extends StatelessWidget {
  const ReviewStep({required this.cart, this.selectedProviderId, super.key});

  final StoreCart cart;
  final String? selectedProviderId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final shippingMethod = cart.shippingMethods.lastOrNull;
    final providerId = reviewPaymentProviderId(cart, selectedProviderId);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartContent(cart: cart, mode: CartContentMode.checkout),
        const SizedBox(height: 24),
        _SummaryBox(
          title: l10n.shippingMethod,
          value:
              shippingMethod?.name ??
              shippingMethod?.id ??
              l10n.noShippingMethodSelected,
        ),
        const SizedBox(height: 16),
        _SummaryBox(
          title: l10n.paymentMethod,
          value: providerId == null
              ? l10n.noPaymentMethodSelected
              : paymentProviderName(providerId),
        ),
      ],
    );
  }
}

class _SummaryBox extends StatelessWidget {
  const _SummaryBox({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.backgroundSecondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          Text(value),
        ],
      ),
    );
  }
}
