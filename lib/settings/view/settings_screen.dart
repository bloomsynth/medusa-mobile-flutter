import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/locale/locale_cubit.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const _languageNames = {'en': 'English', 'id': 'Bahasa'};

  late Locale _selected = context.read<LocaleCubit>().state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;

    OutlineInputBorder border(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: l10n.settings),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                children: [
                  Text(l10n.language, style: TextStyle(color: colors.muted)),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<Locale>(
                    initialValue: _selected,
                    isExpanded: true,
                    hint: Text(l10n.selectLanguage),
                    dropdownColor: colors.background,
                    style: TextStyle(fontSize: 16, color: colors.content),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      enabledBorder: border(colors.border),
                      focusedBorder: border(colors.primary),
                    ),
                    items: [
                      for (final locale in LocaleCubit.supportedLocales)
                        DropdownMenuItem(
                          value: locale,
                          child: Text(
                            _languageNames[locale.languageCode] ??
                                locale.languageCode,
                          ),
                        ),
                    ],
                    onChanged: (locale) {
                      if (locale != null) setState(() => _selected = locale);
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: colors.borderLight)),
              ),
              child: AppButton(
                title: l10n.save,
                onPressed: () => context.read<LocaleCubit>().select(_selected),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
