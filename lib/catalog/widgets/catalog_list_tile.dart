import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// A row in the category, collection and region lists.
class CatalogListTile extends StatelessWidget {
  const CatalogListTile({
    required this.title,
    required this.onTap,
    this.subtitle,
    this.trailing,
    super.key,
  });

  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  /// Defaults to a chevron.
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: colors.borderLight)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null && subtitle!.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, color: colors.muted),
                    ),
                  ],
                ],
              ),
            ),
            trailing ??
                Icon(Icons.chevron_right, size: 20, color: colors.primary),
          ],
        ),
      ),
    );
  }
}
