/// Build-time configuration.
///
/// Values come from `--dart-define` / `--dart-define-from-file=.env`, so they
/// are compiled into the app. See `.env.template` for the supported keys.
abstract final class Env {
  /// Medusa server base URL reachable from the device.
  static const medusaBackendUrl = String.fromEnvironment(
    'MEDUSA_BACKEND_URL',
    defaultValue: 'http://localhost:9000',
  );

  /// Store API key linked to the sales channel that holds the products.
  static const publishableApiKey = String.fromEnvironment(
    'PUBLISHABLE_API_KEY',
  );

  /// Locale used until the customer picks one in Settings.
  static const defaultLocale = String.fromEnvironment(
    'DEFAULT_LOCALE',
    defaultValue: 'en-US',
  );

  /// Stripe publishable key. Empty leaves card payments off.
  static const stripePublishableKey = String.fromEnvironment(
    'STRIPE_PUBLISHABLE_KEY',
  );

  /// Shown by the Stripe Payment Sheet as the merchant.
  static const merchantDisplayName = 'Medusa Mobile';
}
