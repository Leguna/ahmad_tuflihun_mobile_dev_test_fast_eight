import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/strings.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final bool isRequired;
  final bool? readOnly;
  final void Function()? onTap;
  final IconData? suffixIcon;
  final bool? disabled;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;

  const MyTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.validator,
    this.isRequired = false,
    this.readOnly,
    this.onTap,
    this.suffixIcon,
    this.disabled,
    this.keyboardType = TextInputType.text,
    this.inputFormatters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            if (isRequired)
              const Text('*', style: TextStyle(color: Colors.red)),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        TextFormField(
          onTap: onTap,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          readOnly: readOnly ?? false,
          decoration: InputDecoration(
            fillColor: disabled == true ? Colors.grey[200] : Colors.white,
            filled: true,
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          ),
          controller: controller,
          enabled: disabled != true,
          validator: (value) {
            if (isRequired && (value == null || value.isEmpty)) {
              return Strings.kolomHarusDiisi;
            }
            return validator?.call(value);
          },
        ),
      ],
    );
  }
}
