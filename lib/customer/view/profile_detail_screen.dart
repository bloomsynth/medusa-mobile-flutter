import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/validators.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _phone = TextEditingController();
  bool _editing = false;
  bool _saving = false;
  String? _error;

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _phone.dispose();
    super.dispose();
  }

  void _fill(StoreCustomer? customer) {
    _firstName.text = customer?.firstName ?? '';
    _lastName.text = customer?.lastName ?? '';
    _phone.text = customer?.phone ?? '';
  }

  Future<void> _save() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final l10n = context.l10n;
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      await context.read<CustomerCubit>().update({
        'first_name': _firstName.text.trim(),
        'last_name': _lastName.text.trim(),
        'phone': _phone.text.trim(),
      });
      if (mounted) setState(() => _editing = false);
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
    final cubit = context.read<CustomerCubit>();
    final customer = context.watch<CustomerCubit>().state.customer;

    Widget detail(String label, String value) => Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: colors.borderLight)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: colors.muted)),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: l10n.profileDetails),
            Expanded(
              child: RefreshIndicator(
                onRefresh: cubit.refresh,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                  children: [
                    if (_editing)
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            AppInput(
                              controller: _firstName,
                              label: l10n.firstName,
                              validator: (v) => Validators.required(
                                v,
                                l10n.firstNameIsRequired,
                              ),
                            ),
                            const SizedBox(height: 16),
                            AppInput(
                              controller: _lastName,
                              label: l10n.lastName,
                              validator: (v) => Validators.required(
                                v,
                                l10n.lastNameIsRequired,
                              ),
                            ),
                            const SizedBox(height: 16),
                            AppInput(
                              controller: _phone,
                              label: l10n.phone,
                              keyboardType: TextInputType.phone,
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
                      )
                    else ...[
                      detail(l10n.name, customer?.fullName ?? ''),
                      detail(l10n.email, customer?.email ?? ''),
                      detail(
                        l10n.phone,
                        (customer?.phone?.isNotEmpty ?? false)
                            ? customer!.phone!
                            : '-',
                      ),
                    ],
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: colors.borderLight)),
              ),
              child: _editing
                  ? Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            variant: AppButtonVariant.secondary,
                            title: l10n.cancel,
                            onPressed: () => setState(() => _editing = false),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: AppButton(
                            title: l10n.save,
                            loading: _saving,
                            onPressed: _save,
                          ),
                        ),
                      ],
                    )
                  : AppButton(
                      title: l10n.editProfile,
                      disabled: customer == null,
                      onPressed: () => setState(() {
                        _fill(customer);
                        _error = null;
                        _editing = true;
                      }),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
