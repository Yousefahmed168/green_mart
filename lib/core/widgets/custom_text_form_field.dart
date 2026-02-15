import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.validator,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      keyboardType: keyboardType,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      textInputAction: TextInputAction.next,
      validator: validator,
    );
  }
}
