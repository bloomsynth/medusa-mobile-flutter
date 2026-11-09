import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medusa_mobile/shared/utils/image_url.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// A cached product image with a quiet placeholder for missing URLs.
class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    required this.url,
    this.width,
    this.height,
    this.borderRadius = BorderRadius.zero,
    this.fit = BoxFit.cover,
    super.key,
  });

  final String? url;
  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final resolved = formatImageUrl(url);
    final placeholder = Container(
      width: width,
      height: height,
      color: context.colors.backgroundSecondary,
      child: Icon(Icons.image_outlined, color: context.colors.muted),
    );
    return ClipRRect(
      borderRadius: borderRadius,
      child: resolved.isEmpty
          ? placeholder
          : CachedNetworkImage(
              imageUrl: resolved,
              width: width,
              height: height,
              fit: fit,
              placeholder: (_, _) => placeholder,
              errorWidget: (_, _, _) => placeholder,
            ),
    );
  }
}
