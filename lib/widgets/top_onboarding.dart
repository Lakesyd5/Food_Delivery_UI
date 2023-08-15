import 'package:flutter/material.dart';

class TopOnboarding extends StatelessWidget {
  const TopOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.5,
      decoration: const BoxDecoration(
        color: Color.fromARGB(197, 224, 196, 120),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withOpacity(0.4),
                  width: 33,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 84.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withOpacity(0.4),
                  width: 33,
                ),
              ),
            ),
          ),
          Positioned.fill(
              right: -55,
              bottom: -30,
              child: Container(
                clipBehavior: Clip.none,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/portrait_cheerful_male_chef_dressed.png'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
            top: 190,
            left: 35,
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pizza.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 115,
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/french_fries.png'),
                  fit:  BoxFit.cover
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            right: 20,
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/hamburger.png'),
                  fit:  BoxFit.cover
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
