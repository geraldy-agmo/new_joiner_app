import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/favourites_page.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/search_page.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/settings_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const SearchPage(),
    const FavouritesPage(),
    const SettingsPage(),
  ];

  void onItemPressed(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onItemPressed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ]),
    );
  }
}
