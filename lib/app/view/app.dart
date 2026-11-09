import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/locale/locale_cubit.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/theme/app_themes.dart';
import 'package:medusa_mobile/theme/theme_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Wires the shared cubits (theme, locale, region, cart, customer) above the
/// router, the way the React Native app nests its providers.
class App extends StatelessWidget {
  const App({required this.client, required this.prefs, super.key});

  final MedusaClient client;
  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: client,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ThemeCubit(prefs)),
          BlocProvider(create: (_) => LocaleCubit(prefs)),
          BlocProvider(create: (_) => RegionCubit(client, prefs)..load()),
          BlocProvider(
            create: (context) =>
                CartCubit(client, prefs, context.read<RegionCubit>()),
          ),
          BlocProvider(
            create: (context) =>
                CustomerCubit(client, context.read<CartCubit>())..refresh(),
          ),
        ],
        child: const _AppView(),
      ),
    );
  }
}

class _AppView extends StatefulWidget {
  const _AppView();

  @override
  State<_AppView> createState() => _AppViewState();
}

class _AppViewState extends State<_AppView> {
  late final GoRouter _router = buildAppRouter();

  @override
  Widget build(BuildContext context) {
    final themeName = context.watch<ThemeCubit>().state;
    final locale = context.watch<LocaleCubit>().state;
    final colorSet = themeColorSets[themeName]!;

    return MaterialApp.router(
      title: 'Medusa Mobile',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(colorSet.light, Brightness.light),
      darkTheme: buildAppTheme(colorSet.dark, Brightness.dark),
      locale: locale,
      supportedLocales: LocaleCubit.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: _router,
    );
  }
}
