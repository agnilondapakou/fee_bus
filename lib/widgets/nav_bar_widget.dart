import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
      backgroundColor: const Color(0xFF175F30),
      // ignore: prefer_const_literals_to_create_immutables
      animationDuration: Duration(milliseconds: 300),
      color: Color.fromARGB(255, 222, 222, 222),
      items: [
        const Icon(Icons.list, size: 30),
        const Icon(Icons.home, size: 30),
        const Icon(Icons.person, size: 30),
      ],
    );
  }
}
