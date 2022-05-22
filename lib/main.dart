
import 'package:flutter/material.dart';
import 'screens/Category/category_screen.dart';
void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryScreen(),
    );
  }
}

