# Medusa Mobile (Flutter)

A Flutter storefront for [Medusa v2](https://medusajs.com), ported from
[medusa-mobile-react-native](https://github.com/bloomsynth/medusa-mobile-react-native):
browsing, search, cart, promo codes, checkout (manual and Stripe), accounts,
orders, addresses, regions, themes and two languages.

The backend is a separate project. The app talks to its Store API with a
publishable key; admin credentials and secret keys never belong in the app.

## Quick start

You need Flutter 3.47+ (Dart 3.13+) and a running
[Medusa v2 backend](https://docs.medusajs.com/learn/installation).

```bash
cp .env.template .env   # set MEDUSA_BACKEND_URL and PUBLISHABLE_API_KEY
flutter pub get
flutter run --dart-define-from-file=.env
```

### Environment values

Values are compiled in with `--dart-define-from-file=.env`; rebuild after
changing them. `.env` is ignored by Git.

| Variable                 | Purpose                                                 |
| ------------------------ | ------------------------------------------------------- |
| `MEDUSA_BACKEND_URL`     | Medusa server base URL reachable from the device        |
| `PUBLISHABLE_API_KEY`    | Store API key linked to the products' sales channel     |
| `DEFAULT_LOCALE`         | `en-US` or `id-ID`; a language saved in Settings wins   |
| `STRIPE_PUBLISHABLE_KEY` | Stripe publishable key; empty leaves card payments off  |

| Target                  | Local backend URL                              |
| ----------------------- | ---------------------------------------------- |
| Android Studio emulator | `http://10.0.2.2:9000` (template default)      |
| iOS simulator           | `http://localhost:9000`                        |
| Physical device         | The host computer's LAN IP, port 9000          |

Plain `http` works in Android debug builds and for local addresses on iOS.
Release builds need an `https` backend.

### Stripe

Checkout pays through the Stripe Payment Sheet (`flutter_stripe`). The backend
must register Medusa's Stripe provider with its secret key and enable
`pp_stripe_stripe` for the region; only the publishable key goes in `.env`.
Use test keys and [Stripe's test cards](https://docs.stripe.com/testing).

## Architecture

Feature-first folders; each feature keeps its cubits, widgets and screens
together.

| Path                 | What lives there                                                        |
| -------------------- | ----------------------------------------------------------------------- |
| `lib/bootstrap.dart` | Start-up: error handling, Stripe key, preferences, the Medusa client    |
| `lib/app/`           | `App` (shared cubits), `go_router` routes, tab shell, splash            |
| `lib/api/`           | `MedusaClient` (Dio), one class per Store API area, freezed models      |
| `lib/region/`        | `RegionCubit`: the selected region, saved across launches               |
| `lib/cart/`          | `CartCubit`: the one place the cart is changed; cart screen and widgets |
| `lib/customer/`      | `CustomerCubit`: sign-in, registration, profile                         |
| `lib/catalog/`       | Home, search, categories, collections, product detail                   |
| `lib/checkout/`      | `CheckoutCubit`, the four steps, Stripe payment                         |
| `lib/orders/`, `lib/address/`, `lib/settings/` | Account screens                               |
| `lib/theme/`         | Theme tokens (`AppColors`), the four built-in themes, `ThemeCubit`      |
| `lib/l10n/arb/`      | Copy for `en` and `id`                                                  |
| `lib/shared/`        | `FetchCubit`, `SafeCubit`, price and validation helpers, common widgets |

How state flows:

- `MedusaClient` is created once and sends the publishable key and, after
  sign-in, the customer's JWT.
- `RegionCubit` restores the region. `CartCubit` listens to it: it restores or
  creates the region's cart and moves the cart when the region changes.
- Every cart change goes through `CartCubit`, which stores the cart the server
  answers. Don't keep a second copy of the cart elsewhere, or totals and
  checkout steps go stale.
- `CustomerCubit` moves the guest cart to the account on sign-in and starts a
  fresh cart on sign-out.
- Read-only screens use `FetchCubit<T>` (load, error, pull to refresh);
  product grids use `ProductListCubit` (paging). Create a new cubit when the
  request inputs change: the widgets key their providers by region and
  filters.

### Customizing

- **Themes:** edit or add a color set in `lib/theme/app_themes.dart`.
- **Copy and languages:** edit the ARB files in `lib/l10n/arb/` and run
  `flutter gen-l10n`; add the locale to `LocaleCubit.supportedLocales`.
- **Payment providers:** add the provider to `paymentProviderDetails` in
  `lib/checkout/models/checkout_models.dart` and its payment step to
  `CheckoutCubit.completeOrder`.
- **Home banners:** `HeroCarousel` reads sample JSON; point it at your own
  endpoint.

## Development

```bash
dart run build_runner build   # after changing a model in lib/api/models
flutter gen-l10n              # after changing an ARB file
flutter analyze
flutter test
```

Unit tests run the real client, models and cubits against a fake Store API
(`test/helpers/fake_medusa.dart`), with Stripe replaced by a fake. They cover
the API client, cart, checkout guards and payment results, prices, variant
selection and stock rules. They do not cover screens, native builds, the real
Payment Sheet or a live backend; check those on a device.

## Differences from the React Native app

- The address form used for saved addresses is the checkout's (country picker
  from the region, same required fields).
- Returning to checkout resumes at Payment unless the cart already has a
  pending payment session.
- Order dates are shown as dates, not relative times.
