import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/quantity_button.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/rating.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({
    super.key,
    required this.rating,
    required this.category,
    required this.mealTitle,
    required this.description,
    required this.onPressed,
    required this.quantity,
    required this.onIncreased,
    required this.onDecreased,
  });
  final num rating;
  final String category;
  final String mealTitle;
  final String description;
  final num quantity;
  final void Function()? onPressed;
  final void Function() onIncreased;
  final void Function() onDecreased;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Rating
              Rating(ratingValue: rating),

              // Quantity Button
              QuantityButton(
                quantity: quantity,
                decrementQuantity: onDecreased,
                incrementQuantity: onIncreased,
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Category text
          Text(
            category,
            style: GoogleFonts.rubik(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 190, 189, 189),
            ),
          ),
          const SizedBox(height: 5),
          // Meal Title
          Text(
            mealTitle,
            style: GoogleFonts.rubik(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'About',
            style: GoogleFonts.rubik(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          // Meal Description
          Text(
            description,
            style: GoogleFonts.rubik(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              wordSpacing: 7.0,
              color: const Color.fromARGB(255, 190, 189, 189),
            ),
          ),
          const SizedBox(height: 60),
          // Buy Now Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 240, 175, 0),
              minimumSize: const Size(double.infinity, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 0,
            ),
            onPressed: onPressed,
            child: Text(
              'Buy Now',
              style: GoogleFonts.rubik(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 34, 25, 51),
              ),
            ),
          )
        ],
      ),
    );
  }
}
