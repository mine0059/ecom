import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import 'input_field.dart';

class VerticalLabelField extends StatelessWidget {
  const VerticalLabelField({
    super.key,
    required this.label,
    required this.controller,
    this.defaultValidation = true,
    this.enabled = true,
    this.readOnly = false,
    this.mainFieldFlex = 1,
    this.prefixFlex = 1,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.prefix,
    this.contentPadding,
    this.focusNode,
  });

  final String label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool defaultValidation;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final bool enabled;
  final bool readOnly;
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final int mainFieldFlex;
  final int prefixFlex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(10),
        Row(
          children: [
            if (prefix != null) ...[
              Expanded(
                flex: prefixFlex,
                child: prefix!,
              ),
              const Gap(8),
            ],
            Expanded(
              flex: mainFieldFlex,
              child: InputField(
                controller: controller,
                obscureText: obscureText,
                defaultValidation: defaultValidation,
                enabled: enabled,
                readOnly: readOnly,
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                focusNode: focusNode,
                hintText: hintText,
                validator: validator,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
              ),
            )
          ],
        )
      ],
    );
  }
}
