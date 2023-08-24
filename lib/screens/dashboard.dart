import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/pages/cart_page.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/pages/favorites_page.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/pages/home_page.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/pages/settings.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/screens/pages/users_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Icon> items = const [
    Icon(Icons.shopping_cart),
    Icon(Icons.favorite),
    Icon(Icons.home_filled),
    Icon(Icons.person),
    Icon(Icons.settings)
  ];

  final List _pages = const [
    CartPage(),
    FavoritesPage(),
    HomePage(),
    UsersPage(),
    SettingsPage()
  ];

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    items = items.map((item) {
      return Icon(
        item.icon,
        size: items.indexOf(item) == selectedIndex ? 35 : 25,
        color: items.indexOf(item) == selectedIndex
            ? Colors.black // Set active icon color
            : Colors.grey[350], // Set inactive icon color
      );
    }).toList();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          leading: const Icon(CupertinoIcons.line_horizontal_3_decrease),
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell,
                    size: 28,
                  ),
                ),
                const Positioned(
                  right: 14,
                  bottom: 33,
                  child: Badge(
                    smallSize: 8.0,
                  ),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: selectedIndex,
          onTap: (tappedIndex) {
            setState(() {
              selectedIndex = tappedIndex;
            });
          },
          backgroundColor: Colors.transparent.withOpacity(0),
          buttonBackgroundColor: const Color.fromARGB(255, 216, 162, 11),
          animationDuration: const Duration(milliseconds: 300),
        ),
        backgroundColor: Colors.grey[200],
        body: _pages[selectedIndex]);
  }
}
