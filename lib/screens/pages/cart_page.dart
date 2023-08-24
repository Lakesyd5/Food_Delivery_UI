import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/provider/cart_notifier.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cart = ref.watch(cartNotifier);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: MediaQuery.of(context).size.height,
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            if (cart.isEmpty) {
              return const Center(child: Text('Your cart is Empty'));
            }
            return ListView.builder(
              itemCount: cart.length,
              itemBuilder: (BuildContext context, int index) {
                final meal = cart[index];

                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    // minVerticalPadding: 10.0,
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            meal.mealTitle.toString(),
                            style: GoogleFonts.rubik(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text('\$ ${meal.price.toString()}')
                      ],
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Qty'),
                        const SizedBox(width: 10),
                        Text(meal.quantity.toString())
                      ],
                    ),
                    // subtitle: Text(meal.quantity.toString()),
                    trailing: IconButton(
                        onPressed: () {
                          ref
                              .read(cartNotifier.notifier)
                              .removeMealFromCart(meal);
                        },
                        icon: const Icon(Icons.delete)),
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
