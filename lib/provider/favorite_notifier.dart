import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/meals.dart';

final favoriteNotifier = StateNotifierProvider<FavoriteNotifier,List<Meal>>((ref) {
  return FavoriteNotifier();
});

class FavoriteNotifier extends StateNotifier<List<Meal>>{
  FavoriteNotifier() : super([]);

  void favoriteMeal(Meal meal) {
    if (!state.contains(meal)) {
      state = [...state, meal];
    }
  }

  void unfavoriteMeal(Meal meal) {
    state = state.where((favMeal) => favMeal != meal).toList();
  }
}