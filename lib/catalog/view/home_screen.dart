import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/catalog/widgets/featured_collection.dart';
import 'package:medusa_mobile/catalog/widgets/hero_carousel.dart';
import 'package:medusa_mobile/catalog/widgets/products_list.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';
import 'package:medusa_mobile/theme/app_themes.dart';
import 'package:medusa_mobile/theme/theme_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Scaffold(
      backgroundColor: colors.background,
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<ThemeCubit>().next,
        tooltip: context.l10n.switchTheme,
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.palette_outlined),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            _Header(),
            _SearchBar(),
            SizedBox(height: 16),
            Expanded(
              child: ProductsList(
                header: Column(
                  children: [HeroCarousel(), FeaturedCollection()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final showRegionSelector = context.select<RegionCubit, bool>(
      (cubit) => cubit.state.hasMultipleRegions,
    );
    final itemCount = context.select<CartCubit, int>(
      (cubit) => cubit.state.itemCount,
    );

    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showRegionSelector)
              RoundedButton(
                onPressed: () => context.push(AppRoutes.regionSelect),
                child: Icon(Icons.place, size: 20, color: colors.primary),
              )
            else
              RoundedButton(
                onPressed: () {
                  if (context.read<CustomerCubit>().state.isSignedIn) {
                    context.go(AppRoutes.profile);
                  } else {
                    context.push(AppRoutes.signIn);
                  }
                },
                child: Icon(
                  Icons.person_outline,
                  size: 20,
                  color: colors.primary,
                ),
              ),
            Text('MEDUSA MOBILE', style: displayTextStyle(context)),
            RoundedButton(
              color: colors.primary,
              onPressed: () => context.push(AppRoutes.cart),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 18,
                    color: colors.contentSecondary,
                  ),
                  if (itemCount > 0)
                    Positioned(
                      top: -10,
                      right: -14,
                      child: QuantityBadge(
                        quantity: itemCount,
                        variant: QuantityBadgeVariant.secondary,
                      ),
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

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final label = context.l10n.searchProducts;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: Semantics(
        button: true,
        label: label,
        child: Material(
          color: colors.contentSecondary,
          elevation: 2,
          borderRadius: BorderRadius.circular(24),
          child: InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () => context.push(AppRoutes.search),
            child: SizedBox(
              height: 48,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 18, color: colors.primary),
                    const SizedBox(width: 8),
                    ExcludeSemantics(
                      child: Text(
                        label,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
