import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/meals.dart';

final mealQuantityNotifier = StateNotifierProvider.autoDispose<QuantityNotifier,int>((ref) {
  return QuantityNotifier();
});

class QuantityNotifier extends StateNotifier<int> {
  QuantityNotifier() : super(1);

  void incrementQuantity(Meal meal) {
    state = meal.quantity += 1;
  }

  void decrementQuantity(Meal meal) {
    if (meal.quantity > 1) {
      state = meal.quantity -= 1;
    }
  }
}
