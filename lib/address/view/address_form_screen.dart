import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/medusa_exception.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/checkout/widgets/address_fields.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// Adds a saved address, or edits [address]. Pops `true` once saved.
class AddressFormScreen extends StatefulWidget {
  const AddressFormScreen({this.address, super.key});

  final StoreCustomerAddress? address;

  @override
  State<AddressFormScreen> createState() => _AddressFormScreenState();
}

class _AddressFormScreenState extends State<AddressFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final _controllers = AddressFormControllers(widget.address?.toAddress());
  bool _saving = false;
  String? _error;

  bool get _isEditing => widget.address != null;

  @override
  void dispose() {
    _controllers.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final l10n = context.l10n;
    final router = GoRouter.of(context);
    final customerApi = context.read<MedusaClient>().customer;
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      final data = _controllers.toJson();
      if (_isEditing) {
        await customerApi.updateAddress(widget.address!.id, data);
      } else {
        await customerApi.createAddress(data);
      }
      router.pop(true);
    } on MedusaException catch (error) {
      if (mounted) setState(() => _error = error.message);
    } on Exception {
      if (mounted) setState(() => _error = l10n.anErrorOccurred);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    final countries = context.watch<RegionCubit>().state.countries;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: _isEditing ? l10n.editAddress : l10n.addAddress),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddressFields(
                        controllers: _controllers,
                        countries: countries,
                        enabled: !_saving,
                      ),
                      if (_error != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            _error!,
                            style: TextStyle(color: colors.danger),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: colors.borderLight)),
              ),
              child: AppButton(
                title: _isEditing ? l10n.saveChanges : l10n.addAddress,
                loading: _saving,
                onPressed: _submit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
