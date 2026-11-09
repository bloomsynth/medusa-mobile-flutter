// End-to-end purchase against a real Medusa backend, on a device:
//
//   flutter test integration_test --dart-define-from-file=.env -d <device>
//
// It places an order with manual payment, so point it at a development
// backend only. The region needs a shipping option and the manual provider.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medusa_mobile/catalog/widgets/products_list.dart';
import 'package:medusa_mobile/checkout/widgets/checkout_steps.dart';

import 'helpers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('browse, add to cart and check out with manual payment', (
    tester,
  ) async {
    startApp();

    // Home: products with region prices.
    await pumpUntil(tester, find.byType(ProductGridItem));
    await tester.tap(find.byType(ProductGridItem).first);

    // Product: pick a value for every option, then add to cart.
    await pumpUntil(tester, button('Add to cart'));
    final optionChips = find.byWidgetPredicate((widget) {
      final key = widget.key;
      return key is ValueKey<String> && key.value.startsWith('option-');
    });
    for (var i = 0; i < optionChips.evaluate().length; i++) {
      await tapVisible(tester, optionChips.at(i));
    }
    await tester.tap(button('Add to cart'));
    await pumpFor(tester, const Duration(seconds: 4));

    await tester.tap(find.text('View cart'));
    await pumpUntil(tester, button('Checkout'));
    expect(find.text('Summary'), findsOneWidget);
    await tester.tap(button('Checkout'));

    // Address.
    await pumpUntil(tester, button('Continue to Delivery'));
    await fill(tester, 'Email', 'test.buyer@example.com');
    await fillAddress(tester);
    await tester.tap(button('Continue to Delivery'));

    // Delivery: Continue stays off until a method is saved on the cart.
    await pumpUntil(tester, find.byType(CheckoutOptionTile));
    await tester.tap(find.byType(CheckoutOptionTile).first);
    await pumpFor(tester, const Duration(seconds: 4));
    await tester.tap(button('Continue to Payment'));

    // Payment.
    await pumpUntil(tester, find.text('Manual'));
    await tester.tap(find.text('Manual'));
    await tester.pump(const Duration(milliseconds: 300));
    await tester.tap(button('Review Order'));

    // Review and place the order.
    await pumpUntil(tester, button('Place Order'));
    expect(find.text('Shipping Method'), findsOneWidget);
    expect(find.text('Manual'), findsOneWidget);
    await tester.tap(button('Place Order'));

    await pumpUntil(tester, find.text('Order Details'));
    await pumpUntil(tester, find.text('Order Summary'));
    expect(find.text('test.buyer@example.com'), findsOneWidget);
  });
}
