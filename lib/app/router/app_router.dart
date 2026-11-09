import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/address/view/address_form_screen.dart';
import 'package:medusa_mobile/address/view/address_list_screen.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/view/splash_screen.dart';
import 'package:medusa_mobile/app/view/tabbed_shell.dart';
import 'package:medusa_mobile/cart/view/cart_screen.dart';
import 'package:medusa_mobile/catalog/view/categories_screen.dart';
import 'package:medusa_mobile/catalog/view/category_detail_screen.dart';
import 'package:medusa_mobile/catalog/view/collection_detail_screen.dart';
import 'package:medusa_mobile/catalog/view/collections_screen.dart';
import 'package:medusa_mobile/catalog/view/home_screen.dart';
import 'package:medusa_mobile/catalog/view/product_detail_screen.dart';
import 'package:medusa_mobile/catalog/view/search_screen.dart';
import 'package:medusa_mobile/checkout/view/checkout_screen.dart';
import 'package:medusa_mobile/customer/view/login_screen.dart';
import 'package:medusa_mobile/customer/view/profile_detail_screen.dart';
import 'package:medusa_mobile/customer/view/profile_screen.dart';
import 'package:medusa_mobile/customer/view/register_screen.dart';
import 'package:medusa_mobile/orders/view/order_detail_screen.dart';
import 'package:medusa_mobile/orders/view/orders_screen.dart';
import 'package:medusa_mobile/region/view/region_select_screen.dart';
import 'package:medusa_mobile/settings/view/settings_screen.dart';

/// Route paths, so screens never spell them twice.
abstract final class AppRoutes {
  static const splash = '/splash';
  static const home = '/home';
  static const categories = '/categories';
  static const collections = '/collections';
  static const profile = '/profile';
  static const search = '/search';
  static const cart = '/cart';
  static const checkout = '/checkout';
  static const signIn = '/sign-in';
  static const register = '/register';
  static const orders = '/orders';
  static const profileDetail = '/profile-detail';
  static const addresses = '/addresses';
  static const addressForm = '/addresses/edit';
  static const settings = '/settings';
  static const regionSelect = '/region-select';

  static String product(String id) => '/product/$id';
  static String category(String id) => '/category/$id';
  static String collection(String id) => '/collection/$id';
  static String order(String id) => '/orders/$id';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildAppRouter() => GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(path: AppRoutes.splash, builder: (_, _) => const SplashScreen()),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => TabbedShell(shell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (_, _) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.categories,
              builder: (_, _) => const CategoriesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.collections,
              builder: (_, _) => const CollectionsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (_, _) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/product/:id',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, state) =>
          ProductDetailScreen(productId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/category/:id',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, state) =>
          CategoryDetailScreen(categoryId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/collection/:id',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, state) =>
          CollectionDetailScreen(collectionId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: AppRoutes.search,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const SearchScreen(),
    ),
    GoRoute(
      path: AppRoutes.cart,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const CartScreen(),
    ),
    GoRoute(
      path: AppRoutes.checkout,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const CheckoutScreen(),
    ),
    GoRoute(
      path: AppRoutes.signIn,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.orders,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const OrdersScreen(),
      routes: [
        GoRoute(
          path: ':id',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (_, state) =>
              OrderDetailScreen(orderId: state.pathParameters['id']!),
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.profileDetail,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const ProfileDetailScreen(),
    ),
    GoRoute(
      path: AppRoutes.addresses,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const AddressListScreen(),
      routes: [
        GoRoute(
          path: 'edit',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (_, state) =>
              AddressFormScreen(address: state.extra as StoreCustomerAddress?),
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.settings,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, _) => const SettingsScreen(),
    ),
    GoRoute(
      path: AppRoutes.regionSelect,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (_, state) => MaterialPage(
        key: state.pageKey,
        fullscreenDialog: true,
        child: const RegionSelectScreen(),
      ),
    ),
  ],
);
