import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/cubit/fetch_cubit.dart';
import 'package:medusa_mobile/shared/utils/country_name.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

typedef _AddressesCubit = FetchCubit<List<StoreCustomerAddress>>;

class AddressListScreen extends StatelessWidget {
  const AddressListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final signedIn = context.watch<CustomerCubit>().state.isSignedIn;

    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        // Addresses need a signed-in customer; don't ask the API before.
        child: !signedIn
            ? Column(
                children: [
                  Navbar(title: l10n.addresses),
                  EmptyMessage(l10n.pleaseSignInToViewYourAddress),
                ],
              )
            : BlocProvider(
                create: (context) => _AddressesCubit(
                  context.read<MedusaClient>().customer.listAddresses,
                )..load(),
                child: const _AddressListView(),
              ),
      ),
    );
  }
}

class _AddressListView extends StatelessWidget {
  const _AddressListView();

  /// Opens the form and reloads when it saved.
  Future<void> _openForm(
    BuildContext context, [
    StoreCustomerAddress? address,
  ]) async {
    final cubit = context.read<_AddressesCubit>();
    final saved = await context.push<bool>(
      AppRoutes.addressForm,
      extra: address,
    );
    if (saved ?? false) await cubit.refresh();
  }

  Future<void> _delete(BuildContext context, String id) async {
    final cubit = context.read<_AddressesCubit>();
    final messenger = ScaffoldMessenger.of(context);
    final l10n = context.l10n;
    try {
      await context.read<MedusaClient>().customer.deleteAddress(id);
      await cubit.refresh();
    } on Exception {
      messenger.showSnackBar(SnackBar(content: Text(l10n.anErrorOccurred)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final countries = context.watch<RegionCubit>().state.countries;

    return Column(
      children: [
        Navbar(title: l10n.addresses),
        Expanded(
          child:
              BlocBuilder<
                _AddressesCubit,
                FetchState<List<StoreCustomerAddress>>
              >(
                builder: (context, state) {
                  final cubit = context.read<_AddressesCubit>();
                  if (state.isLoading) return const Loader();
                  if (state.status == FetchStatus.failure) {
                    return ErrorView(onRetry: cubit.load);
                  }
                  final addresses = state.data ?? const [];
                  return RefreshIndicator(
                    onRefresh: cubit.refresh,
                    child: ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        if (addresses.isEmpty)
                          EmptyMessage(l10n.noAddressesFound),
                        for (final address in addresses)
                          _AddressCard(
                            address: address,
                            country: countryName(
                              address.countryCode,
                              countries,
                            ),
                            onEdit: () => _openForm(context, address),
                            onDelete: () => _delete(context, address.id),
                          ),
                      ],
                    ),
                  );
                },
              ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: colors.borderLight)),
          ),
          child: AppButton(
            title: l10n.addNewAddress,
            onPressed: () => _openForm(context),
          ),
        ),
      ],
    );
  }
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({
    required this.address,
    required this.country,
    required this.onEdit,
    required this.onDelete,
  });

  final StoreCustomerAddress address;
  final String country;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final muted = TextStyle(color: colors.muted);
    final cityLine = [
      if (address.city?.isNotEmpty ?? false) '${address.city},',
      if (address.province?.isNotEmpty ?? false) address.province!,
      if (address.postalCode?.isNotEmpty ?? false) address.postalCode!,
    ].join(' ');

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 16, 4, 16),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colors.borderLight),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address.fullName,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                if (address.address1 != null)
                  Text(address.address1!, style: muted),
                if (address.address2?.isNotEmpty ?? false)
                  Text(address.address2!, style: muted),
                Text(cityLine, style: muted),
                Text(country, style: muted),
                if (address.phone?.isNotEmpty ?? false)
                  Text(address.phone!, style: muted),
              ],
            ),
          ),
          IconButton(
            onPressed: onEdit,
            icon: Icon(Icons.edit_outlined, size: 20, color: colors.primary),
          ),
          IconButton(
            onPressed: onDelete,
            icon: Icon(Icons.delete_outline, size: 20, color: colors.danger),
          ),
        ],
      ),
    );
  }
}
