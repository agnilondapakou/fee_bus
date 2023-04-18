import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavBarWidget extends StatelessWidget {
  int index = 1;
  NavBarWidget({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.check_circle_outline_rounded),
          label: 'Mes creneaux',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Profile',
        ),
      ],
      currentIndex: index,
      selectedItemColor: const Color(0xFF175F30),
      onTap: (index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/my.crenaux');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/crenaux.liste');
        } else if (index == 2) {
          Navigator.pushNamed(context, '/profile');
        }
      },
    );
  }
}
