import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/themes.dart';
import 'package:green_mart/features/intro/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),

      theme: AppThemes.lighttheme,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Scaffold(),
        );
      },
    );
  }
}
