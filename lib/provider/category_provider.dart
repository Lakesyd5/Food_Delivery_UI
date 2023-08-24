import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/meal_provider.dart';

import '../models/meals.dart';

final selectedCategoryProvider = StateProvider<String?>((ref) => null);


final filteredMealProvider = StateProvider<List<Meal>>((ref) {
  final selectedCategory = ref.watch(selectedCategoryProvider);
  final allMeals = ref.watch(mealsProvider);

  if (selectedCategory == null) {
    return allMeals;
  } else {
    return allMeals.where((meal) => meal.mealCategoryId == selectedCategory).toList();
  }
});
final tappedCategoryProvider = StateProvider<String?>((ref) => null);