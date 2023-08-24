import 'package:flutter/material.dart';


class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.ratingValue,
  });

  final num ratingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 240, 175, 0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.star_rounded, size: 28, color: Colors.white),
          const SizedBox(width: 6),
          Text(ratingValue.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
        ],
      ),
    );
  }
}