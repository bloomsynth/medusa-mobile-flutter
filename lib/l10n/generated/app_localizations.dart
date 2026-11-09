import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id'),
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @collections.
  ///
  /// In en, this message translates to:
  /// **'Collections'**
  String get collections;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @topSelling.
  ///
  /// In en, this message translates to:
  /// **'Top Selling'**
  String get topSelling;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @latestProducts.
  ///
  /// In en, this message translates to:
  /// **'Latest Products'**
  String get latestProducts;

  /// No description provided for @trendingProducts.
  ///
  /// In en, this message translates to:
  /// **'Trending Products'**
  String get trendingProducts;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInToViewYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Sign in to view your profile and orders'**
  String get signInToViewYourProfile;

  /// No description provided for @signingIn.
  ///
  /// In en, this message translates to:
  /// **'Signing in...'**
  String get signingIn;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterYourPassword;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Register'**
  String get dontHaveAnAccount;

  /// No description provided for @invalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid credentials. Please try again.'**
  String get invalidCredentials;

  /// No description provided for @noCollectionsFound.
  ///
  /// In en, this message translates to:
  /// **'No collections found'**
  String get noCollectionsFound;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @goHome.
  ///
  /// In en, this message translates to:
  /// **'Go Home'**
  String get goHome;

  /// No description provided for @youDontHaveAnythingInYourCart.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have anything in your cart.\nUse the link below to start browsing our products.'**
  String get youDontHaveAnythingInYourCart;

  /// No description provided for @profileInformation.
  ///
  /// In en, this message translates to:
  /// **'Profile Information'**
  String get profileInformation;

  /// No description provided for @orderWithId.
  ///
  /// In en, this message translates to:
  /// **'Order # {id}'**
  String orderWithId(String id);

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @shippingAddresses.
  ///
  /// In en, this message translates to:
  /// **'Shipping Addresses'**
  String get shippingAddresses;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @profileDetails.
  ///
  /// In en, this message translates to:
  /// **'Profile Details'**
  String get profileDetails;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @noOrdersFound.
  ///
  /// In en, this message translates to:
  /// **'No orders found'**
  String get noOrdersFound;

  /// No description provided for @signInToViewOrders.
  ///
  /// In en, this message translates to:
  /// **'Please sign in to view your orders'**
  String get signInToViewOrders;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @remainingItems.
  ///
  /// In en, this message translates to:
  /// **'{count} more'**
  String remainingItems(int count);

  /// No description provided for @noCategoriesFound.
  ///
  /// In en, this message translates to:
  /// **'No categories found'**
  String get noCategoriesFound;

  /// No description provided for @variant.
  ///
  /// In en, this message translates to:
  /// **'Variant'**
  String get variant;

  /// No description provided for @addAPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Add a Promo Code'**
  String get addAPromoCode;

  /// No description provided for @enterPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Enter promo code'**
  String get enterPromoCode;

  /// No description provided for @appliedPromotions.
  ///
  /// In en, this message translates to:
  /// **'Applied Promotions'**
  String get appliedPromotions;

  /// No description provided for @invalidPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid promo code'**
  String get invalidPromoCode;

  /// No description provided for @failedToApplyPromotion.
  ///
  /// In en, this message translates to:
  /// **'Failed to apply promotion code'**
  String get failedToApplyPromotion;

  /// No description provided for @failedToRemovePromotion.
  ///
  /// In en, this message translates to:
  /// **'Failed to remove promotion code'**
  String get failedToRemovePromotion;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summary;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'Shipping'**
  String get shipping;

  /// No description provided for @taxes.
  ///
  /// In en, this message translates to:
  /// **'Taxes'**
  String get taxes;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @useSameAddressForBilling.
  ///
  /// In en, this message translates to:
  /// **'Use same address for billing'**
  String get useSameAddressForBilling;

  /// No description provided for @shippingAddress.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shippingAddress;

  /// No description provided for @billingAddress.
  ///
  /// In en, this message translates to:
  /// **'Billing Address'**
  String get billingAddress;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get company;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @postalCode.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get postalCode;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @provinceOrState.
  ///
  /// In en, this message translates to:
  /// **'Province/State'**
  String get provinceOrState;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @selectACountry.
  ///
  /// In en, this message translates to:
  /// **'Select a country'**
  String get selectACountry;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @continueToDelivery.
  ///
  /// In en, this message translates to:
  /// **'Continue to Delivery'**
  String get continueToDelivery;

  /// No description provided for @continueToPayment.
  ///
  /// In en, this message translates to:
  /// **'Continue to Payment'**
  String get continueToPayment;

  /// No description provided for @reviewOrder.
  ///
  /// In en, this message translates to:
  /// **'Review Order'**
  String get reviewOrder;

  /// No description provided for @payUsingProvider.
  ///
  /// In en, this message translates to:
  /// **'Pay using {provider}'**
  String payUsingProvider(String provider);

  /// No description provided for @placeOrder.
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get placeOrder;

  /// No description provided for @continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// No description provided for @pleaseSelectAPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Please select a payment provider'**
  String get pleaseSelectAPaymentMethod;

  /// No description provided for @noCartFound.
  ///
  /// In en, this message translates to:
  /// **'No cart found'**
  String get noCartFound;

  /// No description provided for @paymentProviderNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Payment provider not supported'**
  String get paymentProviderNotSupported;

  /// No description provided for @failedToCompleteOrder.
  ///
  /// In en, this message translates to:
  /// **'Failed to complete order'**
  String get failedToCompleteOrder;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @anErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get anErrorOccurred;

  /// No description provided for @noCartId.
  ///
  /// In en, this message translates to:
  /// **'No cart ID'**
  String get noCartId;

  /// No description provided for @failedToUpdateShippingMethod.
  ///
  /// In en, this message translates to:
  /// **'Failed to update shipping method'**
  String get failedToUpdateShippingMethod;

  /// No description provided for @loadingShippingOptions.
  ///
  /// In en, this message translates to:
  /// **'Loading shipping options'**
  String get loadingShippingOptions;

  /// No description provided for @selectShippingMethod.
  ///
  /// In en, this message translates to:
  /// **'Select Shipping Method'**
  String get selectShippingMethod;

  /// No description provided for @calculating.
  ///
  /// In en, this message translates to:
  /// **'Calculating'**
  String get calculating;

  /// No description provided for @noRegionId.
  ///
  /// In en, this message translates to:
  /// **'No region ID'**
  String get noRegionId;

  /// No description provided for @stripePaymentInfo.
  ///
  /// In en, this message translates to:
  /// **'You\'ll enter your card details securely with Stripe when you pay.'**
  String get stripePaymentInfo;

  /// No description provided for @stripeNotConfigured.
  ///
  /// In en, this message translates to:
  /// **'Card payments aren\'t set up in this app yet. Choose another payment method.'**
  String get stripeNotConfigured;

  /// No description provided for @paymentNotReady.
  ///
  /// In en, this message translates to:
  /// **'Payment couldn\'t be started. Go back to Payment and try again.'**
  String get paymentNotReady;

  /// No description provided for @noAdditionalActionsRequiredForManualPayment.
  ///
  /// In en, this message translates to:
  /// **'No additional actions required for manual payment.'**
  String get noAdditionalActionsRequiredForManualPayment;

  /// No description provided for @paymentProviderIsInDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Payment provider {provider} is in development.'**
  String paymentProviderIsInDevelopment(String provider);

  /// No description provided for @loadingPaymentOptions.
  ///
  /// In en, this message translates to:
  /// **'Loading payment options'**
  String get loadingPaymentOptions;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select Payment Method'**
  String get selectPaymentMethod;

  /// No description provided for @qty.
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get qty;

  /// No description provided for @shippingMethod.
  ///
  /// In en, this message translates to:
  /// **'Shipping Method'**
  String get shippingMethod;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @noShippingMethodSelected.
  ///
  /// In en, this message translates to:
  /// **'No shipping method selected'**
  String get noShippingMethodSelected;

  /// No description provided for @noPaymentMethodSelected.
  ///
  /// In en, this message translates to:
  /// **'No payment method selected'**
  String get noPaymentMethodSelected;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @notFulfilled.
  ///
  /// In en, this message translates to:
  /// **'Not Fulfilled'**
  String get notFulfilled;

  /// No description provided for @partiallyFulfilled.
  ///
  /// In en, this message translates to:
  /// **'Partially Fulfilled'**
  String get partiallyFulfilled;

  /// No description provided for @fulfilled.
  ///
  /// In en, this message translates to:
  /// **'Fulfilled'**
  String get fulfilled;

  /// No description provided for @partiallyShipped.
  ///
  /// In en, this message translates to:
  /// **'Partially Shipped'**
  String get partiallyShipped;

  /// No description provided for @shipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get shipped;

  /// No description provided for @partiallyDelivered.
  ///
  /// In en, this message translates to:
  /// **'Partially Delivered'**
  String get partiallyDelivered;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @countItems.
  ///
  /// In en, this message translates to:
  /// **'{count} item(s)'**
  String countItems(int count);

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetails;

  /// No description provided for @orderNotFound.
  ///
  /// In en, this message translates to:
  /// **'Order not found'**
  String get orderNotFound;

  /// No description provided for @placedOn.
  ///
  /// In en, this message translates to:
  /// **'Placed {datetime}'**
  String placedOn(String datetime);

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @orderItems.
  ///
  /// In en, this message translates to:
  /// **'Order Items'**
  String get orderItems;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @method.
  ///
  /// In en, this message translates to:
  /// **'Method'**
  String get method;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @continueShopping.
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continueShopping;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @pleaseSignInToViewYourAddress.
  ///
  /// In en, this message translates to:
  /// **'Please sign in to view your addresses'**
  String get pleaseSignInToViewYourAddress;

  /// No description provided for @noAddressesFound.
  ///
  /// In en, this message translates to:
  /// **'No addresses found'**
  String get noAddressesFound;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Address'**
  String get addNewAddress;

  /// No description provided for @addAddress.
  ///
  /// In en, this message translates to:
  /// **'Add Address'**
  String get addAddress;

  /// No description provided for @editAddress.
  ///
  /// In en, this message translates to:
  /// **'Edit Address'**
  String get editAddress;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @countryCode.
  ///
  /// In en, this message translates to:
  /// **'Country Code'**
  String get countryCode;

  /// No description provided for @productInformation.
  ///
  /// In en, this message translates to:
  /// **'Product Information'**
  String get productInformation;

  /// No description provided for @material.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get material;

  /// No description provided for @countryOfOrigin.
  ///
  /// In en, this message translates to:
  /// **'Country of origin'**
  String get countryOfOrigin;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @dimensions.
  ///
  /// In en, this message translates to:
  /// **'Dimensions'**
  String get dimensions;

  /// No description provided for @daysReturn.
  ///
  /// In en, this message translates to:
  /// **'{count} day(s) return'**
  String daysReturn(int count);

  /// No description provided for @fastDelivery.
  ///
  /// In en, this message translates to:
  /// **'Fast Delivery'**
  String get fastDelivery;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get addToCart;

  /// No description provided for @outOfStock.
  ///
  /// In en, this message translates to:
  /// **'Out of stock'**
  String get outOfStock;

  /// No description provided for @viewCart.
  ///
  /// In en, this message translates to:
  /// **'View cart'**
  String get viewCart;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select language'**
  String get selectLanguage;

  /// No description provided for @languageIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Language is required'**
  String get languageIsRequired;

  /// No description provided for @firstNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get firstNameIsRequired;

  /// No description provided for @lastNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Last name is required'**
  String get lastNameIsRequired;

  /// No description provided for @addressIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get addressIsRequired;

  /// No description provided for @postalCodeIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Postal code is required'**
  String get postalCodeIsRequired;

  /// No description provided for @cityIsRequired.
  ///
  /// In en, this message translates to:
  /// **'City is required'**
  String get cityIsRequired;

  /// No description provided for @countryIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Country is required'**
  String get countryIsRequired;

  /// No description provided for @phoneIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone is required'**
  String get phoneIsRequired;

  /// No description provided for @pleaseEnterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseEnterAValidEmail;

  /// No description provided for @invalidEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get invalidEmailAddress;

  /// No description provided for @passwordMustBeAtLeastNCharacters.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least {n} characters'**
  String passwordMustBeAtLeastNCharacters(int n);

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @enterYourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter your first name'**
  String get enterYourFirstName;

  /// No description provided for @enterYourLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter your last name'**
  String get enterYourLastName;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @creatingAccount.
  ///
  /// In en, this message translates to:
  /// **'Creating account'**
  String get creatingAccount;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? Sign In'**
  String get alreadyHaveAnAccount;

  /// No description provided for @registrationFailed.
  ///
  /// In en, this message translates to:
  /// **'Registration failed. Please try again.'**
  String get registrationFailed;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchProducts.
  ///
  /// In en, this message translates to:
  /// **'Search products'**
  String get searchProducts;

  /// No description provided for @searchPrompt.
  ///
  /// In en, this message translates to:
  /// **'Type a product name to start searching'**
  String get searchPrompt;

  /// No description provided for @relatedProducts.
  ///
  /// In en, this message translates to:
  /// **'You May Also Like'**
  String get relatedProducts;

  /// No description provided for @noProductsFoundFor.
  ///
  /// In en, this message translates to:
  /// **'No products found for \"{query}\"'**
  String noProductsFoundFor(String query);

  /// No description provided for @selectRegion.
  ///
  /// In en, this message translates to:
  /// **'Select Region'**
  String get selectRegion;

  /// No description provided for @selectOption.
  ///
  /// In en, this message translates to:
  /// **'Select {option}'**
  String selectOption(String option);

  /// No description provided for @original.
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get original;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @switchTheme.
  ///
  /// In en, this message translates to:
  /// **'Switch theme'**
  String get switchTheme;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'id':
      return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
