import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/category_provider.dart';

class CategoryCard extends ConsumerWidget {
  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onTap,
    required this.id
  });

  final String imagePath;
  final String label;
  final void Function()? onTap;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.read(selectedCategoryProvider);
    bool selector = id == selectedCategory;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: selector ? const Color.fromARGB(255, 240, 175, 0) : Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selector ? Colors.white : Colors.transparent,
              ),
              child: Image.asset(
              imagePath,
              width: 60,
              height: 60,
            ),
            ),
            const SizedBox(height: 5),
            Text(label, style: GoogleFonts.rubik(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
