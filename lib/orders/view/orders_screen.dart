import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/utils/order_status.dart';
import 'package:medusa_mobile/shared/utils/price_format.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final signedIn = context.watch<CustomerCubit>().state.isSignedIn;

    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: l10n.orders),
            Expanded(
              // Orders need a signed-in customer; don't ask the API before.
              child: !signedIn
                  ? Align(
                      alignment: Alignment.topCenter,
                      child: EmptyMessage(l10n.signInToViewOrders),
                    )
                  : BlocProvider(
                      create: (context) => FetchCubit<List<StoreOrder>>(
                        context.read<MedusaClient>().order.list,
                      )..load(),
                      child: const _OrdersList(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrdersList extends StatelessWidget {
  const _OrdersList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      FetchCubit<List<StoreOrder>>,
      FetchState<List<StoreOrder>>
    >(
      builder: (context, state) {
        final cubit = context.read<FetchCubit<List<StoreOrder>>>();
        if (state.isLoading) return const Loader();
        if (state.status == FetchStatus.failure) {
          return ErrorView(onRetry: cubit.load);
        }
        final orders = state.data ?? const [];
        return RefreshIndicator(
          onRefresh: cubit.refresh,
          child: orders.isEmpty
              ? ListView(children: [EmptyMessage(context.l10n.noOrdersFound)])
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: orders.length,
                  itemBuilder: (context, index) =>
                      _OrderCard(order: orders[index]),
                ),
        );
      },
    );
  }
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({required this.order});

  static const _maxThumbnails = 5;

  final StoreOrder order;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final locale = Localizations.localeOf(context).toString();
    final thumbnails = order.items
        .take(_maxThumbnails)
        .where((item) => item.thumbnail != null)
        .toList();
    final remaining = order.items.length - _maxThumbnails;
    void open() => context.push(AppRoutes.order(order.id));

    return InkWell(
      onTap: open,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colors.background,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: colors.primary),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.orderWithId('${order.displayId ?? '-'}'),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (order.createdAt != null)
                  Text(
                    DateFormat.yMMMd(locale).format(order.createdAt!.toLocal()),
                    style: TextStyle(fontSize: 14, color: colors.muted),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fulfillmentStatusLabel(l10n, order.fulfillmentStatus),
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  formatAmount(order.total, order.currencyCode),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      for (final item in thumbnails)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: AppNetworkImage(
                            url: item.thumbnail,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      if (remaining > 0)
                        Text(
                          l10n.remainingItems(remaining),
                          style: TextStyle(fontSize: 14, color: colors.muted),
                        ),
                    ],
                  ),
                ),
                Material(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: open,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Text(
                        l10n.view,
                        style: TextStyle(color: colors.contentSecondary),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              l10n.countItems(order.items.length),
              style: TextStyle(fontSize: 14, color: colors.muted),
            ),
          ],
        ),
      ),
    );
  }
}
