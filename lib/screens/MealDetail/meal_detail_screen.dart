import 'package:flutter/material.dart';

import 'package:meals_app/screens/MealDetail/component/meals_detail_item.dart';
import '../../components/appBar.dart';
import '../Meal/data/meals_data.dart';
import '../../models/meals.dart';
class MealDetailScreen extends StatelessWidget {





  @override
  Widget build(BuildContext context) {

  String args =  ModalRoute.of(context)!.settings.arguments as String;
final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == args);

    return Scaffold(
      appBar: buildAppBar(selectedMeal.title),
      body: body(selectedMeal),
    );
  }

 Widget body(Meal m){
   return  mealsDetailItem(m);
 }

}
