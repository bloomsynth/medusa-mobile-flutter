import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/api/medusa_exception.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/customer/cubit/customer_cubit.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/validators.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _loading = false;
  String? _error;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    FocusScope.of(context).unfocus();
    final l10n = context.l10n;
    final router = GoRouter.of(context);
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await context.read<CustomerCubit>().login(
        _email.text.trim(),
        _password.text,
      );
      router.go(AppRoutes.profile);
    } on MedusaException catch (error) {
      if (mounted) {
        setState(
          () => _error = error.isUnauthorized
              ? l10n.invalidCredentials
              : error.message,
        );
      }
    } on Exception {
      if (mounted) setState(() => _error = l10n.invalidCredentials);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: l10n.signIn),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      if (_error != null) ...[
                        Text(
                          _error!,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colors.danger),
                        ),
                        const SizedBox(height: 16),
                      ],
                      AppInput(
                        controller: _email,
                        label: l10n.email,
                        placeholder: l10n.enterYourEmail,
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) => Validators.email(l10n, v),
                      ),
                      const SizedBox(height: 16),
                      AppInput(
                        controller: _password,
                        label: l10n.password,
                        placeholder: l10n.enterYourPassword,
                        obscureText: true,
                        validator: (v) => Validators.password(l10n, v, 3),
                      ),
                      const SizedBox(height: 16),
                      AppButton(
                        title: _loading ? l10n.signingIn : l10n.signIn,
                        loading: _loading,
                        onPressed: _submit,
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: () =>
                            context.pushReplacement(AppRoutes.register),
                        child: Text(
                          l10n.dontHaveAnAccount,
                          style: TextStyle(fontSize: 16, color: colors.primary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
