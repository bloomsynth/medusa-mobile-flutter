import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// Home · Categories · Collections · Profile, with the storefront's own
/// 64 px tab bar.
class TabbedShell extends StatelessWidget {
  const TabbedShell({required this.shell, super.key});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final tabs = [
      (l10n.home, Icons.home_outlined),
      (l10n.categories, Icons.grid_view_outlined),
      (l10n.collections, Icons.menu),
      (l10n.profile, Icons.person_outline),
    ];

    return Scaffold(
      backgroundColor: colors.background,
      body: shell,
      bottomNavigationBar: Material(
        color: colors.background,
        elevation: 8,
        child: SafeArea(
          top: false,
          child: SizedBox(
            height: 64,
            child: Row(
              children: [
                for (var i = 0; i < tabs.length; i++)
                  Expanded(
                    child: _TabItem(
                      label: tabs[i].$1,
                      icon: tabs[i].$2,
                      selected: shell.currentIndex == i,
                      onTap: () => shell.goBranch(
                        i,
                        initialLocation: i == shell.currentIndex,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final color = selected ? colors.primary : colors.content;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(height: 1),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: color,
              fontWeight: selected ? FontWeight.w700 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
