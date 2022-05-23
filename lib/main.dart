// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'screens/Category/category_screen.dart';
import 'Colors/colors.dart';
import 'styles/textstyles.dart';
import 'Routes/routes.dart';
import './screens/Meal/meals_screen.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme,
      home: CategoryScreen(),
      routes: {
        AppRoutes.CATEGORY_SCREEN: (ctx) => MealScreen(),
      },
    );
  }

  var globalTheme = ThemeData(
    colorScheme: colorScheme,
    canvasColor: lightYellow,
    fontFamily: 'Raleway',
    textTheme: ThemeData.light().textTheme.copyWith(
          titleSmall: titleTextStyle,
        ),
  );
}
