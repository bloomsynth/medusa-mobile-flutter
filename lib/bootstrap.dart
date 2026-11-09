import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/token_storage.dart';
import 'package:medusa_mobile/config/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error)', stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

/// What the app needs before the first frame.
class AppDependencies {
  const AppDependencies({required this.client, required this.prefs});

  final MedusaClient client;
  final SharedPreferences prefs;
}

Future<void> bootstrap(
  FutureOr<Widget> Function(AppDependencies deps) builder,
) async {
  await runZonedGuarded<Future<void>>(() async {
    FlutterError.onError = (details) {
      log(details.exceptionAsString(), stackTrace: details.stack);
    };
    WidgetsFlutterBinding.ensureInitialized();
    if (kDebugMode) Bloc.observer = const AppBlocObserver();

    // The native Stripe SDK rejects an empty key, so card payments stay off
    // until STRIPE_PUBLISHABLE_KEY is set.
    if (Env.stripePublishableKey.isNotEmpty) {
      Stripe.publishableKey = Env.stripePublishableKey;
      Stripe.merchantIdentifier = 'merchant.com.bloomsynth.medusa_mobile';
    }

    final prefs = await SharedPreferences.getInstance();
    final client = MedusaClient(
      tokenStorage: SharedPreferencesTokenStorage(prefs),
    );

    runApp(await builder(AppDependencies(client: client, prefs: prefs)));
  }, (error, stack) => log('Zone error: $error', stackTrace: stack));
}
