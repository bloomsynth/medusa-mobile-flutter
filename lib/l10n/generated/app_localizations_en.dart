// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home => 'Home';

  @override
  String get categories => 'Categories';

  @override
  String get collections => 'Collections';

  @override
  String get profile => 'Profile';

  @override
  String get topSelling => 'Top Selling';

  @override
  String get seeAll => 'See All';

  @override
  String get latestProducts => 'Latest Products';

  @override
  String get trendingProducts => 'Trending Products';

  @override
  String get signIn => 'Sign In';

  @override
  String get signInToViewYourProfile =>
      'Sign in to view your profile and orders';

  @override
  String get signingIn => 'Signing in...';

  @override
  String get email => 'Email';

  @override
  String get enterYourEmail => 'Enter your email';

  @override
  String get password => 'Password';

  @override
  String get enterYourPassword => 'Enter your password';

  @override
  String get dontHaveAnAccount => 'Don\'t have an account? Register';

  @override
  String get invalidCredentials => 'Invalid credentials. Please try again.';

  @override
  String get noCollectionsFound => 'No collections found';

  @override
  String get cart => 'Cart';

  @override
  String get checkout => 'Checkout';

  @override
  String get goHome => 'Go Home';

  @override
  String get youDontHaveAnythingInYourCart =>
      'You don\'t have anything in your cart.\nUse the link below to start browsing our products.';

  @override
  String get profileInformation => 'Profile Information';

  @override
  String orderWithId(String id) {
    return 'Order # $id';
  }

  @override
  String get orders => 'Orders';

  @override
  String get shippingAddresses => 'Shipping Addresses';

  @override
  String get logout => 'Logout';

  @override
  String get profileDetails => 'Profile Details';

  @override
  String get name => 'Name';

  @override
  String get phone => 'Phone';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get noOrdersFound => 'No orders found';

  @override
  String get signInToViewOrders => 'Please sign in to view your orders';

  @override
  String get view => 'View';

  @override
  String remainingItems(int count) {
    return '$count more';
  }

  @override
  String get noCategoriesFound => 'No categories found';

  @override
  String get variant => 'Variant';

  @override
  String get addAPromoCode => 'Add a Promo Code';

  @override
  String get enterPromoCode => 'Enter promo code';

  @override
  String get appliedPromotions => 'Applied Promotions';

  @override
  String get invalidPromoCode => 'Invalid promo code';

  @override
  String get failedToApplyPromotion => 'Failed to apply promotion code';

  @override
  String get failedToRemovePromotion => 'Failed to remove promotion code';

  @override
  String get apply => 'Apply';

  @override
  String get summary => 'Summary';

  @override
  String get discount => 'Discount';

  @override
  String get subtotal => 'Subtotal';

  @override
  String get shipping => 'Shipping';

  @override
  String get taxes => 'Taxes';

  @override
  String get total => 'Total';

  @override
  String get useSameAddressForBilling => 'Use same address for billing';

  @override
  String get shippingAddress => 'Shipping Address';

  @override
  String get billingAddress => 'Billing Address';

  @override
  String get address => 'Address';

  @override
  String get company => 'Company';

  @override
  String get optional => 'Optional';

  @override
  String get postalCode => 'Postal Code';

  @override
  String get city => 'City';

  @override
  String get provinceOrState => 'Province/State';

  @override
  String get country => 'Country';

  @override
  String get selectACountry => 'Select a country';

  @override
  String get delivery => 'Delivery';

  @override
  String get payment => 'Payment';

  @override
  String get review => 'Review';

  @override
  String get continueToDelivery => 'Continue to Delivery';

  @override
  String get continueToPayment => 'Continue to Payment';

  @override
  String get reviewOrder => 'Review Order';

  @override
  String payUsingProvider(String provider) {
    return 'Pay using $provider';
  }

  @override
  String get placeOrder => 'Place Order';

  @override
  String get continueLabel => 'Continue';

  @override
  String get pleaseSelectAPaymentMethod => 'Please select a payment provider';

  @override
  String get noCartFound => 'No cart found';

  @override
  String get paymentProviderNotSupported => 'Payment provider not supported';

  @override
  String get failedToCompleteOrder => 'Failed to complete order';

  @override
  String get error => 'Error';

  @override
  String get anErrorOccurred => 'An error occurred';

  @override
  String get noCartId => 'No cart ID';

  @override
  String get failedToUpdateShippingMethod => 'Failed to update shipping method';

  @override
  String get loadingShippingOptions => 'Loading shipping options';

  @override
  String get selectShippingMethod => 'Select Shipping Method';

  @override
  String get calculating => 'Calculating';

  @override
  String get noRegionId => 'No region ID';

  @override
  String get stripePaymentInfo =>
      'You\'ll enter your card details securely with Stripe when you pay.';

  @override
  String get stripeNotConfigured =>
      'Card payments aren\'t set up in this app yet. Choose another payment method.';

  @override
  String get paymentNotReady =>
      'Payment couldn\'t be started. Go back to Payment and try again.';

  @override
  String get noAdditionalActionsRequiredForManualPayment =>
      'No additional actions required for manual payment.';

  @override
  String paymentProviderIsInDevelopment(String provider) {
    return 'Payment provider $provider is in development.';
  }

  @override
  String get loadingPaymentOptions => 'Loading payment options';

  @override
  String get selectPaymentMethod => 'Select Payment Method';

  @override
  String get qty => 'Qty';

  @override
  String get shippingMethod => 'Shipping Method';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get noShippingMethodSelected => 'No shipping method selected';

  @override
  String get noPaymentMethodSelected => 'No payment method selected';

  @override
  String get canceled => 'Canceled';

  @override
  String get notFulfilled => 'Not Fulfilled';

  @override
  String get partiallyFulfilled => 'Partially Fulfilled';

  @override
  String get fulfilled => 'Fulfilled';

  @override
  String get partiallyShipped => 'Partially Shipped';

  @override
  String get shipped => 'Shipped';

  @override
  String get partiallyDelivered => 'Partially Delivered';

  @override
  String get delivered => 'Delivered';

  @override
  String countItems(int count) {
    return '$count item(s)';
  }

  @override
  String get orderDetails => 'Order Details';

  @override
  String get orderNotFound => 'Order not found';

  @override
  String placedOn(String datetime) {
    return 'Placed $datetime';
  }

  @override
  String get status => 'Status';

  @override
  String get orderItems => 'Order Items';

  @override
  String get contact => 'Contact';

  @override
  String get method => 'Method';

  @override
  String get orderSummary => 'Order Summary';

  @override
  String get continueShopping => 'Continue Shopping';

  @override
  String get addresses => 'Addresses';

  @override
  String get pleaseSignInToViewYourAddress =>
      'Please sign in to view your addresses';

  @override
  String get noAddressesFound => 'No addresses found';

  @override
  String get addNewAddress => 'Add New Address';

  @override
  String get addAddress => 'Add Address';

  @override
  String get editAddress => 'Edit Address';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get countryCode => 'Country Code';

  @override
  String get productInformation => 'Product Information';

  @override
  String get material => 'Material';

  @override
  String get countryOfOrigin => 'Country of origin';

  @override
  String get type => 'Type';

  @override
  String get weight => 'Weight';

  @override
  String get dimensions => 'Dimensions';

  @override
  String daysReturn(int count) {
    return '$count day(s) return';
  }

  @override
  String get fastDelivery => 'Fast Delivery';

  @override
  String get addToCart => 'Add to cart';

  @override
  String get outOfStock => 'Out of stock';

  @override
  String get viewCart => 'View cart';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select language';

  @override
  String get languageIsRequired => 'Language is required';

  @override
  String get firstNameIsRequired => 'First name is required';

  @override
  String get lastNameIsRequired => 'Last name is required';

  @override
  String get addressIsRequired => 'Address is required';

  @override
  String get postalCodeIsRequired => 'Postal code is required';

  @override
  String get cityIsRequired => 'City is required';

  @override
  String get countryIsRequired => 'Country is required';

  @override
  String get phoneIsRequired => 'Phone is required';

  @override
  String get pleaseEnterAValidEmail => 'Please enter a valid email';

  @override
  String get invalidEmailAddress => 'Invalid email address';

  @override
  String passwordMustBeAtLeastNCharacters(int n) {
    return 'Password must be at least $n characters';
  }

  @override
  String get register => 'Register';

  @override
  String get enterYourFirstName => 'Enter your first name';

  @override
  String get enterYourLastName => 'Enter your last name';

  @override
  String get createAccount => 'Create Account';

  @override
  String get creatingAccount => 'Creating account';

  @override
  String get alreadyHaveAnAccount => 'Already have an account? Sign In';

  @override
  String get registrationFailed => 'Registration failed. Please try again.';

  @override
  String get search => 'Search';

  @override
  String get searchProducts => 'Search products';

  @override
  String get searchPrompt => 'Type a product name to start searching';

  @override
  String get relatedProducts => 'You May Also Like';

  @override
  String noProductsFoundFor(String query) {
    return 'No products found for \"$query\"';
  }

  @override
  String get selectRegion => 'Select Region';

  @override
  String selectOption(String option) {
    return 'Select $option';
  }

  @override
  String get original => 'Original';

  @override
  String get retry => 'Retry';

  @override
  String get switchTheme => 'Switch theme';
}
