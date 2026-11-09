import 'package:flutter/material.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/utils/validators.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The text controllers of one address form.
class AddressFormControllers {
  AddressFormControllers([StoreAddress? address])
    : firstName = TextEditingController(text: address?.firstName ?? ''),
      lastName = TextEditingController(text: address?.lastName ?? ''),
      address1 = TextEditingController(text: address?.address1 ?? ''),
      company = TextEditingController(text: address?.company ?? ''),
      postalCode = TextEditingController(text: address?.postalCode ?? ''),
      city = TextEditingController(text: address?.city ?? ''),
      province = TextEditingController(text: address?.province ?? ''),
      phone = TextEditingController(text: address?.phone ?? ''),
      countryCode = address?.countryCode ?? '';

  final TextEditingController firstName;
  final TextEditingController lastName;
  final TextEditingController address1;
  final TextEditingController company;
  final TextEditingController postalCode;
  final TextEditingController city;
  final TextEditingController province;
  final TextEditingController phone;
  String countryCode;

  /// The address as the Store API expects it.
  Map<String, dynamic> toJson() => {
    'first_name': firstName.text.trim(),
    'last_name': lastName.text.trim(),
    'address_1': address1.text.trim(),
    'company': company.text.trim(),
    'postal_code': postalCode.text.trim(),
    'city': city.text.trim(),
    'country_code': countryCode,
    'province': province.text.trim(),
    'phone': phone.text.trim(),
  };

  void dispose() {
    for (final controller in [
      firstName,
      lastName,
      address1,
      company,
      postalCode,
      city,
      province,
      phone,
    ]) {
      controller.dispose();
    }
  }
}

/// The address inputs, validated by the enclosing [Form]. The country is
/// picked from the region's countries.
class AddressFields extends StatelessWidget {
  const AddressFields({
    required this.controllers,
    required this.countries,
    this.title,
    this.enabled = true,
    super.key,
  });

  final AddressFormControllers controllers;
  final List<StoreRegionCountry> countries;
  final String? title;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    const gap = SizedBox(height: 16);
    final optional = '(${l10n.optional})';
    final hasCountry = countries.any((c) => c.iso2 == controllers.countryCode);

    OutlineInputBorder border(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(title!, style: const TextStyle(fontSize: 24)),
          gap,
        ],
        AppInput(
          controller: controllers.firstName,
          label: l10n.firstName,
          enabled: enabled,
          textCapitalization: TextCapitalization.words,
          validator: (v) => Validators.required(v, l10n.firstNameIsRequired),
        ),
        gap,
        AppInput(
          controller: controllers.lastName,
          label: l10n.lastName,
          enabled: enabled,
          textCapitalization: TextCapitalization.words,
          validator: (v) => Validators.required(v, l10n.lastNameIsRequired),
        ),
        gap,
        AppInput(
          controller: controllers.address1,
          label: l10n.address,
          enabled: enabled,
          keyboardType: TextInputType.streetAddress,
          validator: (v) => Validators.required(v, l10n.addressIsRequired),
        ),
        gap,
        AppInput(
          controller: controllers.company,
          label: '${l10n.company} $optional',
          enabled: enabled,
        ),
        gap,
        AppInput(
          controller: controllers.postalCode,
          label: l10n.postalCode,
          enabled: enabled,
          validator: (v) => Validators.required(v, l10n.postalCodeIsRequired),
        ),
        gap,
        AppInput(
          controller: controllers.city,
          label: l10n.city,
          enabled: enabled,
          textCapitalization: TextCapitalization.words,
          validator: (v) => Validators.required(v, l10n.cityIsRequired),
        ),
        gap,
        AppInput(
          controller: controllers.province,
          label: '${l10n.provinceOrState} $optional',
          enabled: enabled,
        ),
        gap,
        Text(l10n.country, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          initialValue: hasCountry ? controllers.countryCode : null,
          isExpanded: true,
          hint: Text(l10n.selectACountry),
          dropdownColor: colors.background,
          style: TextStyle(fontSize: 16, color: colors.content),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            enabledBorder: border(colors.border),
            disabledBorder: border(colors.borderLight),
            focusedBorder: border(colors.primary),
            errorBorder: border(colors.danger),
            focusedErrorBorder: border(colors.danger),
          ),
          items: [
            for (final country in countries)
              DropdownMenuItem(
                value: country.iso2,
                child: Text(country.displayName ?? country.iso2.toUpperCase()),
              ),
          ],
          onChanged: enabled
              ? (value) => controllers.countryCode = value ?? ''
              : null,
          validator: (v) => Validators.required(v, l10n.countryIsRequired),
        ),
        gap,
        AppInput(
          controller: controllers.phone,
          label: l10n.phone,
          enabled: enabled,
          keyboardType: TextInputType.phone,
          validator: (v) => Validators.required(v, l10n.phoneIsRequired),
        ),
      ],
    );
  }
}
