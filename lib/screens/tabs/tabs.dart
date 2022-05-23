// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../Category/category_screen.dart';
import '../favourite/favourite_screen.dart';

class TabScreen extends StatefulWidget {
  var noTabs = 2;

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.noTabs,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meals"),
          bottom: TabBar(tabs: buildTabs()),

        ),
        body: TabBarView(children: [
          CategoryScreen(),
          FavouriteScreen()
        ]),
      ),
    );
  }

List<Widget> buildTabs(){
  return [
    tabItem(Icons.category, 'categories'),
    tabItem(Icons.star, 'Favourites')
  ];
}

}

Widget tabItem(IconData icon,String text){
  return Tab(icon: Icon(icon),text: text,);
}