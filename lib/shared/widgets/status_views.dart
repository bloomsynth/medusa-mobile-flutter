import 'package:flutter/material.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) =>
      const Center(child: CircularProgressIndicator());
}

class ErrorView extends StatelessWidget {
  const ErrorView({this.message, this.onRetry, super.key});

  final String? message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message ?? l10n.anErrorOccurred,
              textAlign: TextAlign.center,
              style: TextStyle(color: context.colors.content, fontSize: 16),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 12),
              TextButton(onPressed: onRetry, child: Text(l10n.retry)),
            ],
          ],
        ),
      ),
    );
  }
}

/// Centered grey message for empty lists.
class EmptyMessage extends StatelessWidget {
  const EmptyMessage(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(color: context.colors.muted, fontSize: 16),
      ),
    );
  }
}
