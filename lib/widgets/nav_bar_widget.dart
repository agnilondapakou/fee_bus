import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      buttonBackgroundColor: Colors.white,
      height: 50,
      index: 1,

      // ignore: prefer_const_literals_to_create_immutables
      backgroundColor: const Color(0xFF175F30),
      // ignore: prefer_const_literals_to_create_immutables
      animationDuration: const Duration(milliseconds: 300),
      color: const Color.fromARGB(255, 222, 222, 222),
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: const Icon(Icons.monetization_on_outlined, size: 30),
        ),
        IconButton(
          icon: const Icon(Icons.home, size: 30),
          onPressed: () {
            Navigator.pushNamed(context, '/crenauxListe');
          },
        ),
        const Icon(Icons.check_circle_outline, size: 30),
        const Icon(Icons.person, size: 30),
      ],
    );
  }
}
