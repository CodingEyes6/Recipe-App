// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import './screens/favourite/favourite_screen.dart';
import 'screens/Category/category_screen.dart';
import 'Colors/colors.dart';
import 'styles/textstyles.dart';
import 'Routes/routes.dart';
import './screens/Meal/meals_screen.dart';
import './screens/MealDetail/meal_detail_screen.dart';
import './screens/tabs/tabs.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme,
      routes: routes(context),
    );
  }

  Map<String, Widget Function(BuildContext)> routes(BuildContext ctx) {
    return {
      AppRoutes.CATEGORY_SCREEN: (ctx) => CategoryScreen(),
      AppRoutes.HOME_SCREEN: (ctx) => TabScreen(),
      AppRoutes.MEAL_DETAIL_SCREEN: (ctx) => MealDetailScreen(),
      AppRoutes.FAVOURITE_SCREEN: (ctx) => FavouriteScreen(),
      AppRoutes.MEAL_SCREEN: (ctx) => MealScreen(),
    };
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
