import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/meals_provider.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/meal_info.dart';

class MealDetails extends ConsumerStatefulWidget {
  const MealDetails({super.key});

  @override
  ConsumerState<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends ConsumerState<MealDetails> {
  @override
  Widget build(BuildContext context) {
    final selectedMeal = ref.watch(mealProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart))
        ],
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Hero(
            tag: 'meal-img-${selectedMeal.mealTitle}',
            child: Image.asset(
              selectedMeal.imagePath.toString(),
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: MealInfo(
              rating: selectedMeal.rating ?? 0,
              category: selectedMeal.category.toString(), 
              mealTitle: selectedMeal.mealTitle.toString(), 
              description: selectedMeal.description.toString(), 
              onPressed: () {  },
            ),
          )
        ],
      ),
    );
  }
}
