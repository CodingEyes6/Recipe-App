// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../favourite/favourite_screen.dart';
import '../Category/category_screen.dart';
import '../../Colors/colors.dart';

class TabScreen extends StatefulWidget {
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoryScreen(),
      'title' : 'Category'
    },
    {
      'page': FavouriteScreen(),
      'title' : 'Favourite'
    }
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( _pages[_selectedPageIndex]['title'] as String),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: accentColor,
        backgroundColor: primaryColor,
        currentIndex: _selectedPageIndex,
        items: botttomTabBarItemsList(),
      ),
    );
  }

  List<BottomNavigationBarItem> botttomTabBarItemsList() {
    return [
      buildBottomBarItem(Icons.category, 'Categories'),
      buildBottomBarItem(Icons.favorite, 'Favourite'),
    ];
  }

  BottomNavigationBarItem buildBottomBarItem(IconData icon, String text) {
    return BottomNavigationBarItem(icon: Icon(icon), label: text);
  }
}
