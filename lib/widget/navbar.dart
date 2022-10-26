import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;

  BottomMenu({required this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Movies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.new_releases),
          label: 'Releases',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer),
          label: 'Curiosities',
        )
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: kTextColor,
      backgroundColor: kPrimaryColor,
      unselectedItemColor: Colors.white,
    );
  }
}
