import 'package:flutter/material.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/top_onboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 240, 175, 0),
      body: Column(
        children: [
          TopOnboarding()
        ],
      )
    );
  }
}