import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/checkout/cubit/checkout_cubit.dart';
import 'package:medusa_mobile/checkout/cubit/shipping_options_cubit.dart';
import 'package:medusa_mobile/checkout/widgets/checkout_steps.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class ShippingStep extends StatelessWidget {
  const ShippingStep({required this.currencyCode, super.key});

  final String currencyCode;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShippingOptionsCubit(
        context.read<MedusaClient>(),
        context.read<CartCubit>(),
      )..load(),
      child: BlocConsumer<ShippingOptionsCubit, ShippingOptionsState>(
        // Continue stays off while a shipping method is being saved.
        listenWhen: (previous, current) =>
            previous.isUpdating != current.isUpdating,
        listener: (context, state) => context
            .read<CheckoutCubit>()
            .setUpdatingShipping(updating: state.isUpdating),
        builder: (context, state) {
          final l10n = context.l10n;
          final colors = context.colors;
          final cubit = context.read<ShippingOptionsCubit>();

          if (state.isLoading) {
            return Padding(
              padding: const EdgeInsets.only(top: 48),
              child: EmptyMessage('${l10n.loadingShippingOptions}...'),
            );
          }
          if (state.loadFailed) return ErrorView(onRetry: cubit.load);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.selectShippingMethod,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              if (state.updateFailed)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    l10n.failedToUpdateShippingMethod,
                    key: const Key('shipping-error'),
                    style: TextStyle(color: colors.danger),
                  ),
                ),
              for (final option in state.options)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: CheckoutOptionTile(
                    label: option.name,
                    selected: state.selectedOptionId == option.id,
                    onTap:
                        state.isUpdating ||
                            (option.isCalculated && state.isCalculatingPrices)
                        ? null
                        : () => cubit.select(option.id),
                    trailing: state.updatingOptionId == option.id
                        ? const SizedBox.square(
                            dimension: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Text(
                            option.isCalculated && state.isCalculatingPrices
                                ? '${l10n.calculating}...'
                                : state.amountOf(option) == null
                                ? '-'
                                : formatAmount(
                                    state.amountOf(option),
                                    currencyCode,
                                  ),
                          ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
