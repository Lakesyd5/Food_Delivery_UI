import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.quantity,
    required this.incrementQuantity,
    required this.decrementQuantity,
  });

  final num quantity;
  final void Function() incrementQuantity;
  final void Function() decrementQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 240, 175, 0), width: 2.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Decrease button
          GestureDetector(
            onTap: decrementQuantity,
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.horizontal(
                  start: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 240, 175, 0),
              ),
              child: const Icon(Icons.remove),
            ),
          ),
          // Quantity
          Text(quantity.toString(),
              style:
                  GoogleFonts.rubik(fontSize: 25, fontWeight: FontWeight.w500)),

          // Increase button
          GestureDetector(
            onTap: incrementQuantity,
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.horizontal(
                    end: Radius.circular(20)),
                color: Color.fromARGB(255, 240, 175, 0),
              ),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
