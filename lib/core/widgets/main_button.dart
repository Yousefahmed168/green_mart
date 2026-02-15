import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyles.body),
    );
  }
}
