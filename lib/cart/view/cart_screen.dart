import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/cart/cubit/cart_state.dart';
import 'package:medusa_mobile/cart/widgets/cart_content.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            final cart = state.cart;
            final isEmpty = cart == null || cart.isEmpty;
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      children: [
                        Navbar(title: l10n.cart),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: isEmpty
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 80),
                                  child: state.isLoading
                                      ? const Loader()
                                      : Text(
                                          l10n.youDontHaveAnythingInYourCart,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                )
                              : CartContent(
                                  cart: cart,
                                  mode: CartContentMode.cart,
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: colors.backgroundSecondary,
                  padding: const EdgeInsets.all(16),
                  child: isEmpty
                      ? AppButton(
                          title: l10n.goHome,
                          onPressed: () => context.go(AppRoutes.home),
                        )
                      : AppButton(
                          title: l10n.checkout,
                          onPressed: () => context.push(AppRoutes.checkout),
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
