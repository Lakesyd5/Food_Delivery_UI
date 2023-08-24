import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/meals.dart';

final cartNotifier = StateNotifierProvider< CartStateNotifier,List<Meal>>((ref) {
  return CartStateNotifier();
});

class CartStateNotifier extends StateNotifier<List<Meal>> {
  CartStateNotifier() : super([]);

  void addMealToCart(Meal meal) {
    if (!state.contains(meal)) {
      state = [...state, meal];
    }
  }

  void removeMealFromCart(Meal meal) {
    state = state.where((cartmeal) => cartmeal != meal).toList();
  }

  void emptyMealCart() {
    state = [];
  }
}