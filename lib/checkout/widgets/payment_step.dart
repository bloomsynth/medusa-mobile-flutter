import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/checkout/cubit/checkout_cubit.dart';
import 'package:medusa_mobile/checkout/models/checkout_models.dart';
import 'package:medusa_mobile/checkout/widgets/checkout_steps.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class PaymentStep extends StatelessWidget {
  const PaymentStep({required this.regionId, super.key});

  final String regionId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey(regionId),
      create: (context) => FetchCubit<List<StorePaymentProvider>>(
        () => context.read<MedusaClient>().payment.listProviders(
          regionId: regionId,
        ),
      )..load(),
      child:
          BlocBuilder<
            FetchCubit<List<StorePaymentProvider>>,
            FetchState<List<StorePaymentProvider>>
          >(
            builder: (context, state) {
              final l10n = context.l10n;
              final colors = context.colors;
              final checkout = context.watch<CheckoutCubit>();
              final selectedId = checkout.state.selectedProviderId;

              if (state.isLoading) {
                return Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: EmptyMessage('${l10n.loadingPaymentOptions}...'),
                );
              }
              if (state.status == FetchStatus.failure) {
                return ErrorView(
                  onRetry: context
                      .read<FetchCubit<List<StorePaymentProvider>>>()
                      .load,
                );
              }
              final providers = state.data ?? const [];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.selectPaymentMethod,
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 16),
                  for (final provider in providers)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CheckoutOptionTile(
                        label: paymentProviderName(provider.id),
                        selected: selectedId == provider.id,
                        onTap: () => checkout.selectProvider(provider.id),
                      ),
                    ),
                  if (selectedId != null)
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: colors.backgroundSecondary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(switch (selectedId) {
                        stripeProviderId =>
                          checkout.stripeConfigured
                              ? l10n.stripePaymentInfo
                              : l10n.stripeNotConfigured,
                        manualProviderId =>
                          l10n.noAdditionalActionsRequiredForManualPayment,
                        _ => l10n.paymentProviderIsInDevelopment(
                          paymentProviderName(selectedId),
                        ),
                      }),
                    ),
                ],
              );
            },
          ),
    );
  }
}
