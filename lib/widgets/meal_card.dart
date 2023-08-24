import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    super.key,
    required this.imagePath,
    required this.mealTitle,
    required this.mealPrice,
    required this.onTap,
  });

  final String imagePath;
  final String mealTitle;
  final num mealPrice;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 170,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  // spreadRadius: 1,
                  blurRadius: 20,
                  offset: const Offset(10, 10), // changes the shadow position
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -45,
                  child: Hero(
                    tag: 'meal-img-$mealTitle',
                    child: Image.asset(
                      imagePath,
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 90),
                    Text(
                      mealTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '\$$mealPrice',
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
