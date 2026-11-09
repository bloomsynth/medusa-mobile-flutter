import 'package:flutter/material.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// A labelled text field with the storefront's border states.
class AppInput extends StatelessWidget {
  const AppInput({
    this.controller,
    this.label,
    this.placeholder,
    this.required = false,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.autofocus = false,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.initialValue,
    super.key,
  });

  final TextEditingController? controller;
  final String? label;
  final String? placeholder;
  final bool required;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final bool autofocus;
  final TextCapitalization textCapitalization;

  /// The keyboard action; defaults to moving on to the next field.
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    OutlineInputBorder border(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            required ? '$label*' : label!,
            style: TextStyle(fontSize: 16, color: colors.content),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          initialValue: controller == null ? initialValue : null,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          enabled: enabled,
          autofocus: autofocus,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          onChanged: onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(fontSize: 16, color: colors.content),
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: TextStyle(color: colors.muted),
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: border(colors.border),
            disabledBorder: border(colors.borderLight),
            focusedBorder: border(colors.primary),
            errorBorder: border(colors.danger),
            focusedErrorBorder: border(colors.danger),
            errorStyle: TextStyle(color: colors.danger, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
