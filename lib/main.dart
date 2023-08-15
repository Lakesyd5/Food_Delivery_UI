import 'package:flutter/material.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}

