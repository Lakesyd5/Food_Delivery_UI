import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/meals.dart';

final mealProvider = StateProvider<Meal>((ref) {
  return Meal();
});