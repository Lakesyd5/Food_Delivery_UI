import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quickbite_food_delivery_app_ui_challenge/data/dummy_data.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/category_provider.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/meal_details.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/category_card.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/widgets/meal_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final filteredMeals = ref.watch(filteredMealProvider);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          /// BrandName
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'QuickBite',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 34, 25, 51)),
                ),
                const Badge(
                  backgroundColor: Color.fromARGB(255, 240, 175, 0),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),

          /// Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Food',
                hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 190, 189, 189),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  size: 25,
                  weight: 30.0,
                  color: Color.fromARGB(255, 34, 25, 51),
                ),
                suffixIcon: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0.0),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 175, 0),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    CupertinoIcons.slider_horizontal_3,
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          const SizedBox(height: 30),

          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                final item = categories[index];
                return CategoryCard(
                  imagePath: item.imageUrl,
                  label: item.title,
                  onTap: () {
                    ref.read(selectedCategoryProvider.notifier).state = item.id;
                    ref.read(tappedCategoryProvider.notifier).state = item.id;
                  }, id: item.id,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 15);
              },
            ),
          ),
          const SizedBox(height: 20),

          Expanded(
            child: filteredMeals.isEmpty
                ? const Center(
                    child: Text('No Meal available for this Category'),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.only(top: 40),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Display 2 cards per row
                      mainAxisSpacing: 50.0, // Adjust spacing between rows
                    ),
                    itemCount: filteredMeals.length,
                    itemBuilder: (context, index) {
                      final meal = filteredMeals[index];
                      return MealCard(
                        mealTitle: meal.mealTitle ?? '',
                        mealPrice: meal.price ?? 0,
                        imagePath: meal.imagePath ?? '',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MealDetails(selectedMeal: meal),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
