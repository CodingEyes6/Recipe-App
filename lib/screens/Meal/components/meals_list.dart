import 'package:flutter/cupertino.dart';

import '../data/meals_data.dart';
import 'meal_item.dart';
import '../../../models/meals.dart';

ListView mealsList(BuildContext context, String categoryID) {
  
  List<Meal> categoryMeals = DUMMY_MEALS.where(
    (meal) {
      return meal.categories.contains(categoryID);
    },
  ).toList();

  return ListView.builder(
    itemBuilder: (context, index) {
      return MealItem(
        mealId: categoryMeals[index].id,
        mealTitle: categoryMeals[index].title,
        mealImageUrl: categoryMeals[index].imageUrl,
        mealDuration: categoryMeals[index].duration,
        mealComplexity: categoryMeals[index].complexity,
        mealAffordability: categoryMeals[index].affordability,
      );
    },
    itemCount: categoryMeals.length,
  );
}
