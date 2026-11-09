// Account, address book, settings and search against a real Medusa backend:
//
//   flutter test integration_test --dart-define-from-file=.env -d <device>
//
// Each run registers a new customer (e2e+<timestamp>@example.com), so point
// it at a development backend only.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medusa_mobile/catalog/widgets/products_list.dart';

import 'helpers.dart';

/// Opens the Profile tab and signs out if an earlier run left a session.
Future<void> openProfileSignedOut(WidgetTester tester) async {
  await pumpUntil(tester, find.byType(ProductGridItem));
  await tester.tap(find.text('Profile').last);
  await pumpFor(tester, const Duration(seconds: 3));
  if (find.text('Logout').evaluate().isNotEmpty) {
    await tapVisible(tester, find.text('Logout'));
  }
  await pumpUntil(tester, button('Sign In'));
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('register, manage addresses, change language, sign in again', (
    tester,
  ) async {
    final email = 'e2e+${DateTime.now().millisecondsSinceEpoch}@example.com';
    const password = 'e2e-test-password';

    startApp();
    await openProfileSignedOut(tester);

    // Register.
    await tester.tap(button('Sign In'));
    await pumpUntil(tester, find.text("Don't have an account? Register"));
    await tester.tap(find.text("Don't have an account? Register"));
    await pumpUntil(tester, button('Create Account'));
    await fill(tester, 'First Name', 'E2E');
    await fill(tester, 'Last Name', 'Tester');
    await fill(tester, 'Email', email);
    await fill(tester, 'Password', password);
    await tapVisible(tester, button('Create Account'));

    // Profile shows the new customer.
    await pumpUntil(tester, find.text('Profile Information'));
    expect(find.text('E2E Tester'), findsOneWidget);
    expect(find.text(email), findsOneWidget);

    // Profile details: edit the phone number.
    await tester.tap(find.text('Profile Information'));
    await pumpUntil(tester, button('Edit Profile'));
    await tester.tap(button('Edit Profile'));
    await pumpUntil(tester, button('Save'));
    await fill(tester, 'Phone', '5550111');
    await tester.tap(button('Save'));
    await pumpUntil(tester, find.text('5550111'));
    await goBack(tester);

    // Orders: none yet for a new customer.
    await tester.tap(find.text('Orders'));
    await pumpUntil(tester, find.text('No orders found'));
    await goBack(tester);

    // Addresses: add one, see it listed, delete it.
    await tester.tap(find.text('Shipping Addresses'));
    await pumpUntil(tester, find.text('No addresses found'));
    await tester.tap(button('Add New Address'));
    await pumpUntil(tester, button('Add Address'));
    await fillAddress(tester);
    await tapVisible(tester, button('Add Address'));
    await pumpUntil(tester, find.text('Test Buyer'));
    expect(find.text('12 Test Street'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.delete_outline));
    await pumpUntil(tester, find.text('No addresses found'));
    await goBack(tester);

    // Settings: switch to Bahasa and back.
    await tester.tap(find.text('Settings'));
    await pumpUntil(tester, button('Save'));
    await tester.tap(find.byType(DropdownButtonFormField<Locale>));
    await pumpFor(tester, const Duration(seconds: 1));
    await tester.tap(find.text('Bahasa').last);
    await pumpFor(tester, const Duration(seconds: 1));
    await tester.tap(button('Save'));
    await pumpUntil(tester, find.text('Pengaturan'));
    await tester.tap(find.byType(DropdownButtonFormField<Locale>));
    await pumpFor(tester, const Duration(seconds: 1));
    await tester.tap(find.text('English').last);
    await pumpFor(tester, const Duration(seconds: 1));
    await tester.tap(button('Simpan'));
    await pumpUntil(tester, find.text('Settings'));
    await goBack(tester);

    // Sign out, then sign in with the same credentials.
    await tapVisible(tester, find.text('Logout'));
    await pumpUntil(tester, button('Sign In'));
    await tester.tap(button('Sign In'));
    await pumpUntil(tester, find.text("Don't have an account? Register"));
    await fill(tester, 'Email', email);
    await fill(tester, 'Password', password);
    await tapVisible(tester, button('Sign In'));
    await pumpUntil(tester, find.text('Profile Information'));
    expect(find.text(email), findsOneWidget);

    await tapVisible(tester, find.text('Logout'));
    await pumpUntil(tester, button('Sign In'));
  });

  testWidgets('a wrong password is refused with a message', (tester) async {
    startApp();
    await openProfileSignedOut(tester);

    await tester.tap(button('Sign In'));
    await pumpUntil(tester, find.text("Don't have an account? Register"));
    await fill(tester, 'Email', 'nobody@example.com');
    await fill(tester, 'Password', 'wrong-password');
    await tapVisible(tester, button('Sign In'));

    await pumpUntil(
      tester,
      find.text('Invalid credentials. Please try again.'),
    );
  });

  testWidgets('search finds a product by name and shows the empty state', (
    tester,
  ) async {
    startApp();
    await pumpUntil(tester, find.byType(ProductGridItem));
    final title = tester
        .widget<ProductGridItem>(find.byType(ProductGridItem).first)
        .product
        .title;
    final word = title.split(RegExp(r'\W+')).firstWhere((w) => w.length > 2);

    await tester.tap(find.text('Search products'));
    await pumpUntil(tester, find.byKey(const Key('search-input')));
    expect(find.text('Type a product name to start searching'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('search-input')), word);
    await pumpUntil(tester, find.byType(ProductGridItem));
    expect(
      tester
          .widgetList<ProductGridItem>(find.byType(ProductGridItem))
          .map((item) => item.product.title),
      contains(title),
    );

    await tester.enterText(find.byKey(const Key('search-input')), 'zzzqqqxxx');
    await pumpUntil(tester, find.textContaining('No products found for'));
  });
}
