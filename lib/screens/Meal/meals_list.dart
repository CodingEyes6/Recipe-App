import 'package:flutter/cupertino.dart';

import 'meals_data.dart';

ListView mealsList(BuildContext context,String categoryID){

final categoryMeals = DUMMY_MEALS.where((meal){ 
  return meal.categories.contains(categoryID);
  },).toList();

return ListView.builder(itemBuilder: (context, index) {
  return Text(categoryMeals[index].title);
},itemCount: categoryMeals.length,);


}


