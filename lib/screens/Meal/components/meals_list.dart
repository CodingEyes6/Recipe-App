import 'package:flutter/cupertino.dart';

import '../data/meals_data.dart';
import 'meal_item.dart';

ListView mealsList(BuildContext context, String categoryID) {
  final categoryMeals = DUMMY_MEALS.where(
    (meal) {
      return meal.categories.contains(categoryID);
    },
  ).toList();

  return ListView.builder(
    itemBuilder: (context, index) {
      return MealItem(
        id: categoryMeals[index].id,
        title: categoryMeals[index].title,
        imageUrl: categoryMeals[index].imageUrl,
        duration: categoryMeals[index].duration,
        complexity: categoryMeals[index].complexity,
        affordability: categoryMeals[index].affordability,
      );
    },
    itemCount: categoryMeals.length,
  );
}
