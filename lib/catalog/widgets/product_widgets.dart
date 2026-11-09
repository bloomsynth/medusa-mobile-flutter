import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/product_price.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The product gallery, 40% of the screen tall, with page dots.
class ProductImageCarousel extends StatefulWidget {
  const ProductImageCarousel({required this.images, super.key});

  final List<StoreProductImage> images;

  @override
  State<ProductImageCarousel> createState() => _ProductImageCarouselState();
}

class _ProductImageCarouselState extends State<ProductImageCarousel> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 0.4;
    final images = widget.images;
    if (images.isEmpty) {
      return AppNetworkImage(url: null, height: height, width: double.infinity);
    }
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          options: CarouselOptions(
            height: height,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) => setState(() => _index = index),
          ),
          itemBuilder: (context, index, realIndex) => AppNetworkImage(
            url: images[index].url,
            width: double.infinity,
            height: height,
          ),
        ),
        if (images.length > 1)
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < images.length; i++)
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: i == _index
                          ? const Color(0xFF4B5563)
                          : const Color(0xFFE5E7EB),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}

/// The selected variant's price, or the cheapest one before a selection.
class ProductPrice extends StatelessWidget {
  const ProductPrice({required this.product, this.variant, super.key});

  final StoreProduct product;
  final StoreProductVariant? variant;

  @override
  Widget build(BuildContext context) {
    final price = variant != null
        ? variantPrice(product, variant!.id)
        : cheapestPrice(product);
    final colors = context.colors;
    if (price == null) {
      return Container(width: 128, height: 28, color: colors.borderLight);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          price.calculatedPrice,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        if (price.isSale) ...[
          Text.rich(
            TextSpan(
              text: '${context.l10n.original}: ',
              children: [
                TextSpan(
                  text: price.originalPrice,
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            style: TextStyle(color: colors.muted),
          ),
          Text(
            '-${price.percentageDiff}%',
            style: TextStyle(color: colors.primary),
          ),
        ],
      ],
    );
  }
}

/// The value chips for one product option (Size, Color, ...).
class OptionSelect extends StatelessWidget {
  const OptionSelect({
    required this.option,
    required this.current,
    required this.onSelected,
    super.key,
  });

  final StoreProductOption option;
  final String? current;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.selectOption(option.title),
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 12,
          children: [
            for (final value in option.values)
              _OptionChip(
                key: ValueKey('option-${option.id}-${value.value}'),
                label: value.value,
                selected: value.value == current,
                colors: colors,
                onTap: () => onSelected(value.value),
              ),
          ],
        ),
      ],
    );
  }
}

class _OptionChip extends StatelessWidget {
  const _OptionChip({
    required this.label,
    required this.selected,
    required this.colors,
    required this.onTap,
    super.key,
  });

  final String label;
  final bool selected;
  final AppColors colors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? colors.primary : colors.backgroundSecondary,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minWidth: 64),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: selected ? colors.primary : colors.borderLight,
            ),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: selected ? colors.contentSecondary : colors.content,
            ),
          ),
        ),
      ),
    );
  }
}

/// Material, origin, type, weight and dimensions.
class ProductAttributes extends StatelessWidget {
  const ProductAttributes({required this.product, super.key});

  final StoreProduct product;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final hasDimensions =
        product.length != null &&
        product.width != null &&
        product.height != null;

    Widget attribute(String label, String? value) => Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.75,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Text(value == null || value.isEmpty ? '-' : value),
        ],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.75,
          child: Text(
            l10n.productInformation,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  attribute(l10n.material, product.material),
                  attribute(l10n.countryOfOrigin, product.originCountry),
                  attribute(l10n.type, product.type?.value),
                ],
              ),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  attribute(
                    l10n.weight,
                    product.weight == null ? null : '${product.weight} g',
                  ),
                  attribute(
                    l10n.dimensions,
                    hasDimensions
                        ? '${product.length}L x ${product.width}W x ${product.height}H'
                        : null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// The return and delivery promises under the product details.
class ProductFeatures extends StatelessWidget {
  const ProductFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;

    Widget feature(IconData icon, String label) => Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colors.backgroundSecondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, size: 30, color: colors.content),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );

    return Row(
      children: [
        feature(Icons.swap_horiz, l10n.daysReturn(7)),
        const SizedBox(width: 8),
        feature(Icons.local_shipping_outlined, l10n.fastDelivery),
      ],
    );
  }
}
