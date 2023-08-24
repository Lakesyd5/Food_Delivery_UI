import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/favorite_notifier.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritedMeals = ref.watch(favoriteNotifier);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: MediaQuery.of(context).size.height,
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            if (favoritedMeals.isEmpty) {
              return const Center(child: Text('Your have no Favorites yet'));
            }
            return ListView.builder(
              itemCount: favoritedMeals.length,
              itemBuilder: (BuildContext context, int index) {
                final meal = favoritedMeals[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    style: ListTileStyle.drawer,
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meal.mealTitle.toString(),
                          style: GoogleFonts.rubik(fontWeight: FontWeight.bold),
                        ),
                        Text(meal.category.toString())
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        ref.read(favoriteNotifier.notifier).unfavoriteMeal(meal);
                      },
                      icon: const Icon(CupertinoIcons.heart_slash_fill),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
