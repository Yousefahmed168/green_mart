import 'package:flutter/material.dart';
import 'package:green_mart/features/home/page/home_screen.dart';

void pushReplacement(BuildContext context, Widget newScreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newScreen),
  );
}

void pushTo(BuildContext context, Widget newScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newScreen));
}

void pop(BuildContext context, HomeScreen homeScreen) {
  Navigator.pop(context);
}
