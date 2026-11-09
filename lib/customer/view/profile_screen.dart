import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';
import 'package:medusa_mobile/theme/app_themes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    try {
      await context.read<CustomerCubit>().logout();
    } on Exception catch (error) {
      log('Logout error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final customer = context.watch<CustomerCubit>().state.customer;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: l10n.profile, showBackButton: false),
            Expanded(
              child: customer == null
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              l10n.signInToViewYourProfile,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: 180,
                              child: AppButton(
                                title: l10n.signIn,
                                onPressed: () => context.push(AppRoutes.signIn),
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextButton.icon(
                              onPressed: () => context.push(AppRoutes.settings),
                              icon: Icon(
                                Icons.settings_outlined,
                                size: 18,
                                color: colors.primary,
                              ),
                              label: Text(
                                l10n.settings,
                                style: TextStyle(color: colors.primary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 24,
                      ),
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 100,
                          color: colors.border,
                        ),
                        Text(
                          customer.fullName,
                          textAlign: TextAlign.center,
                          style: displayTextStyle(context),
                        ),
                        const SizedBox(height: 4),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            customer.email ?? '',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 32),
                        _ProfileOption(
                          icon: Icons.badge_outlined,
                          label: l10n.profileInformation,
                          onTap: () => context.push(AppRoutes.profileDetail),
                        ),
                        _ProfileOption(
                          icon: Icons.receipt_long_outlined,
                          label: l10n.orders,
                          onTap: () => context.push(AppRoutes.orders),
                        ),
                        _ProfileOption(
                          icon: Icons.place_outlined,
                          label: l10n.shippingAddresses,
                          onTap: () => context.push(AppRoutes.addresses),
                        ),
                        _ProfileOption(
                          icon: Icons.settings_outlined,
                          label: l10n.settings,
                          onTap: () => context.push(AppRoutes.settings),
                        ),
                        _ProfileOption(
                          icon: Icons.logout,
                          label: l10n.logout,
                          onTap: () => _logout(context),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileOption extends StatelessWidget {
  const _ProfileOption({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

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
            Icon(icon, size: 20, color: colors.content),
            const SizedBox(width: 12),
            Expanded(child: Text(label)),
            Icon(Icons.chevron_right, size: 18, color: colors.primary),
          ],
        ),
      ),
    );
  }
}
