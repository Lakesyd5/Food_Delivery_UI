import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/meals.dart';

import '../data/dummy_data.dart';

final mealsProvider = Provider<List<Meal>>((ref) => dummymeals);