import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/meals.dart';

import 'package:quickbite_food_delivery_app_ui_challenge/provider/cart_notifier.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/favorite_notifier.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/quantity_notifier.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/meal_info.dart';

class MealDetails extends ConsumerStatefulWidget {
  const MealDetails({super.key, required this.selectedMeal});

  final Meal selectedMeal;

  @override
  ConsumerState<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends ConsumerState<MealDetails> {
  @override
  Widget build(BuildContext context) {
    final quantity = ref.read(mealQuantityNotifier.notifier);
    final favorite = ref.read(favoriteNotifier.notifier);
    final mealQty = ref.watch(mealQuantityNotifier);

    ref.listen(favoriteNotifier, (prevMeal, newMeal) {
      if (newMeal.length > prevMeal!.length) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Meal has been favorited')),
        );
      }
    });

    ref.listen(cartNotifier, (preMeal, nextMeal) {
      if (!identical(nextMeal, preMeal)) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Meal added to Cart')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              favorite.favoriteMeal(widget.selectedMeal);
            },
            icon: const Icon(CupertinoIcons.heart),
          )
        ],
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Hero(
            tag: 'meal-img-${widget.selectedMeal.mealTitle}',
            child: Image.asset(
              widget.selectedMeal.imagePath.toString(),
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: MealInfo(
              rating: widget.selectedMeal.rating ?? 0,
              category: widget.selectedMeal.category.toString(),
              mealTitle: widget.selectedMeal.mealTitle.toString(),
              description: widget.selectedMeal.description.toString(),
              quantity: mealQty,
              onPressed: () {
                ref
                    .read(cartNotifier.notifier)
                    .addMealToCart(widget.selectedMeal);
                Navigator.pop(context);
              },
              onIncreased: () {
                quantity.incrementQuantity(widget.selectedMeal);
              },
              onDecreased: () {
                quantity.decrementQuantity(widget.selectedMeal);
              },
            ),
          )
        ],
      ),
    );
  }
}
