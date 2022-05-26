// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import './screens/Meal/data/meals_data.dart';
import './screens/Filter/filter_screen.dart';
import './screens/favourite/favourite_screen.dart';
import 'screens/Category/category_screen.dart';
import 'Colors/colors.dart';
import './models/meals.dart';
import 'styles/textstyles.dart';
import 'Routes/routes.dart';
import './screens/Meal/meals_screen.dart';
import './screens/MealDetail/meal_detail_screen.dart';
import './screens/tabs/tabs.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  final List<Meal> _favouritedMeals = [];

  void _setFilters(Map<String, bool> filtersData) {
    setState(() {
      _filters = filtersData;
    

      

      _availableMeals = DUMMY_MEALS.where(
        (meal) {
          if (_filters['gluten'] == true && !meal.isGlutenFree) {
            return false;
          }
          if (_filters['lactose'] as bool && !meal.isLactoseFree) {
            return false;
          }
          if (_filters['vegan'] as bool && !meal.isVegan) {
            return false;
          }

          if (_filters['vegetarian'] as bool && !meal.isVegetarian) {
            return false;
          }
          return true;
        },
      ).toList();
    });
  }
   void _toggleFavourite(String mealID){
final existingIndex = _favouritedMeals.indexWhere((meal) => meal.id == mealID);
if(existingIndex >= 0){
  setState(() {
  _favouritedMeals.removeAt(existingIndex);
  });
}
else{
  setState(() {
    _favouritedMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealID));
  });
}
  }


  bool _isFavouriteMeal(String id){
    return _favouritedMeals.any((meal) => meal.id == id);
  }

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
      AppRoutes.HOME_SCREEN: (ctx) => TabScreen(_favouritedMeals),
      AppRoutes.MEAL_DETAIL_SCREEN: (ctx) => MealDetailScreen(_toggleFavourite,_isFavouriteMeal),
      AppRoutes.FAVOURITE_SCREEN: (ctx) => FavouriteScreen(_favouritedMeals),
      AppRoutes.MEAL_SCREEN: (ctx) => MealScreen(_availableMeals),
      AppRoutes.FILTER_SCREEN: (ctx) => FilterScreen(_setFilters,_filters)
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
