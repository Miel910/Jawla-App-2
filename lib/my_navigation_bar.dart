import 'package:flutter/material.dart';

import 'constants/constants.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("Plan"),
    const Text("Favorite"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: const Color(0xFFE3E0D9),
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.timeline), label: "Plan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
