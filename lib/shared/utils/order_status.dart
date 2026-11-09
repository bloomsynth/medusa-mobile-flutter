import 'package:medusa_mobile/l10n/l10n.dart';

/// Localized label for an order's `fulfillment_status`.
String fulfillmentStatusLabel(AppLocalizations l10n, String? status) =>
    switch (status) {
      'canceled' => l10n.canceled,
      'partially_fulfilled' => l10n.partiallyFulfilled,
      'fulfilled' => l10n.fulfilled,
      'partially_shipped' => l10n.partiallyShipped,
      'shipped' => l10n.shipped,
      'partially_delivered' => l10n.partiallyDelivered,
      'delivered' => l10n.delivered,
      _ => l10n.notFulfilled,
    };
