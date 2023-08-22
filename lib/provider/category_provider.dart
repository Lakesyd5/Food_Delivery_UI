import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/data/dummy_data.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/category.dart';

final categoryprovider = Provider<List<Category>>((ref) {
  return categories;
});