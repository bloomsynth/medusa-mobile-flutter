import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/utils/country_name.dart';
import 'package:medusa_mobile/shared/utils/order_status.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({required this.orderId, super.key});

  final String orderId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    return BlocProvider(
      create: (context) => FetchCubit<StoreOrder>(
        () => context.read<MedusaClient>().order.retrieve(orderId),
      )..load(),
      child: Scaffold(
        backgroundColor: colors.background,
        body: SafeArea(
          child: Column(
            children: [
              Navbar(title: l10n.orderDetails),
              Expanded(
                child:
                    BlocBuilder<FetchCubit<StoreOrder>, FetchState<StoreOrder>>(
                      builder: (context, state) {
                        if (state.isLoading) return const Loader();
                        final order = state.data;
                        if (order == null) {
                          return ErrorView(
                            message: l10n.orderNotFound,
                            onRetry: context
                                .read<FetchCubit<StoreOrder>>()
                                .load,
                          );
                        }
                        return _OrderBody(order: order);
                      },
                    ),
              ),
              Container(
                color: colors.backgroundSecondary,
                padding: const EdgeInsets.all(16),
                child: AppButton(
                  title: l10n.continueShopping,
                  onPressed: () => context.go(AppRoutes.home),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderBody extends StatelessWidget {
  const _OrderBody({required this.order});

  final StoreOrder order;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final currency = order.currencyCode;
    final locale = Localizations.localeOf(context).toString();
    final countries = context.watch<RegionCubit>().state.countries;
    final address = order.shippingAddress;

    Widget label(String text) => Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Opacity(opacity: 0.6, child: Text(text)),
    );

    Widget summaryRow(String name, String value, {Color? valueColor}) =>
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(opacity: 0.6, child: Text(name)),
              Text(value, style: TextStyle(color: valueColor)),
            ],
          ),
        );

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          l10n.orderWithId('${order.displayId ?? '-'}'),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        if (order.createdAt != null)
          Opacity(
            opacity: 0.6,
            child: Text(
              l10n.placedOn(
                DateFormat.yMMMMd(locale)
                    .add_jm()
                    .format(order.createdAt!.toLocal()),
              ),
            ),
          ),
        const SizedBox(height: 24),
        label(l10n.status),
        Text(fulfillmentStatusLabel(l10n, order.fulfillmentStatus)),
        const SizedBox(height: 24),
        Text(
          l10n.orderItems,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        for (final item in order.items)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: colors.primary)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppNetworkImage(
                  url: item.thumbnail,
                  width: 48,
                  height: 48,
                  borderRadius: BorderRadius.circular(4),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.productTitle ?? item.title ?? '',
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      if (item.variantTitle != null &&
                          item.variantTitle!.isNotEmpty)
                        Text(
                          '${l10n.variant}: ${item.variantTitle}',
                          style: TextStyle(fontSize: 14, color: colors.muted),
                        ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${item.quantity}x ${formatAmount(item.unitPrice, currency)}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      formatAmount(item.unitPrice * item.quantity, currency),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        const SizedBox(height: 24),
        if (address != null) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    label(l10n.shippingAddress),
                    Text(address.fullName),
                    if (address.address1 != null) Text(address.address1!),
                    if (address.address2?.isNotEmpty ?? false)
                      Text(address.address2!),
                    Text(
                      [
                        if (address.city?.isNotEmpty ?? false)
                          '${address.city},',
                        if (address.province?.isNotEmpty ?? false)
                          address.province!,
                        if (address.postalCode?.isNotEmpty ?? false)
                          address.postalCode!,
                      ].join(' '),
                    ),
                    Text(countryName(address.countryCode, countries)),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    label(l10n.contact),
                    Text(order.email ?? ''),
                    if (address.phone?.isNotEmpty ?? false)
                      Text(address.phone!),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
        Text(l10n.orderSummary, style: const TextStyle(fontSize: 18)),
        const SizedBox(height: 8),
        summaryRow(l10n.subtotal, formatAmount(order.subtotal, currency)),
        summaryRow(l10n.shipping, formatAmount(order.shippingTotal, currency)),
        if (order.discountTotal > 0)
          summaryRow(
            l10n.discount,
            '-${formatAmount(order.discountTotal, currency)}',
            valueColor: colors.success,
          ),
        summaryRow(
          l10n.taxes,
          order.taxTotal > 0 ? formatAmount(order.taxTotal, currency) : '-',
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: colors.primary)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.total,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                formatAmount(order.total, currency),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
