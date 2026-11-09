import 'package:flutter/material.dart';
import 'package:medusa_mobile/shared/utils/product_price.dart';

/// The price under a product card: the struck-out original when on sale.
class PreviewPrice extends StatelessWidget {
  const PreviewPrice({required this.price, super.key});

  final VariantPrice price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (price.isSale)
          Text(
            price.originalPrice,
            style: const TextStyle(decoration: TextDecoration.lineThrough),
          ),
        Text(price.calculatedPrice),
      ],
    );
  }
}
