import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medusa_mobile/main.dart' as app;
import 'package:medusa_mobile/shared/widgets/widgets.dart';

/// Starts the app. Its bootstrap installs its own `FlutterError.onError`,
/// which would hide test failures (the run then hangs instead of failing),
/// so the test framework's handler is put back.
void startApp() {
  final testErrorHandler = FlutterError.onError;
  app.main();
  FlutterError.onError = testErrorHandler;
}

/// Pumps frames until [finder] matches. `pumpAndSettle` cannot be used: the
/// banner carousel and progress indicators animate forever.
Future<void> pumpUntil(
  WidgetTester tester,
  Finder finder, {
  Duration timeout = const Duration(seconds: 30),
}) async {
  final end = DateTime.now().add(timeout);
  while (finder.evaluate().isEmpty) {
    if (DateTime.now().isAfter(end)) {
      fail('Timed out waiting for $finder');
    }
    await tester.pump(const Duration(milliseconds: 200));
  }
}

Future<void> pumpFor(WidgetTester tester, Duration duration) async {
  final end = DateTime.now().add(duration);
  while (DateTime.now().isBefore(end)) {
    await tester.pump(const Duration(milliseconds: 100));
  }
}

Future<void> tapVisible(WidgetTester tester, Finder finder) async {
  await tester.ensureVisible(finder);
  await tester.pump(const Duration(milliseconds: 300));
  await tester.tap(finder);
  await tester.pump(const Duration(milliseconds: 300));
}

/// Types into the [AppInput] with this label.
Future<void> fill(WidgetTester tester, String label, String text) async {
  final field = find.descendant(
    of: find.widgetWithText(AppInput, label),
    matching: find.byType(TextFormField),
  );
  await tester.ensureVisible(field.first);
  await tester.enterText(field.first, text);
  await tester.pump(const Duration(milliseconds: 100));
}

Finder button(String title) => find.widgetWithText(AppButton, title);

/// Opens the dropdown and picks its first entry, by its label: the open
/// menu draws the labels again on top of the closed button's hidden copies.
Future<void> pickFirstDropdownItem<T>(WidgetTester tester) async {
  final dropdown = find.byType(DropdownButtonFormField<T>);
  final firstItem = tester
      .widget<DropdownButton<T>>(find.byType(DropdownButton<T>))
      .items!
      .first;
  final label = (firstItem.child as Text).data!;
  await tapVisible(tester, dropdown);
  await pumpFor(tester, const Duration(seconds: 1));
  await tester.tap(find.text(label).last);
  await pumpFor(tester, const Duration(seconds: 1));
}

/// Fills the shared address fields with test data.
Future<void> fillAddress(WidgetTester tester) async {
  await fill(tester, 'First Name', 'Test');
  await fill(tester, 'Last Name', 'Buyer');
  await fill(tester, 'Address', '12 Test Street');
  await fill(tester, 'Postal Code', '560001');
  await fill(tester, 'City', 'Bengaluru');
  await fill(tester, 'Phone', '5550100');
  await pickFirstDropdownItem<String>(tester);
}

/// Taps the round back button of the screen on top.
Future<void> goBack(WidgetTester tester) async {
  await tester.tap(find.byType(BackRoundedButton).last);
  await pumpFor(tester, const Duration(seconds: 1));
}
