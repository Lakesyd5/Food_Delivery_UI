import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/dashboard.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/top_onboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const TopOnboarding(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text(
                'Order in a tap, \n Savor in a snap!',
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 34, 25, 51)),
              ),
              const SizedBox(height: 15),
              Text(
                'Order now and treat \n yourself to a delicious meal!',
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(fontSize: 21, fontWeight: FontWeight.w500, color: Color.fromARGB(255,190,189,189)),
              ), 
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 240,175,0),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                }, child: Text('Order Now', style: GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 34, 25, 51)),))
            ],
          ),
        ),
      ],
    ));
  }
}
