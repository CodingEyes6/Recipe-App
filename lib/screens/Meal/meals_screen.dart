
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../components/appBar.dart';
import '../Category/components/category_item.dart';
import 'components/meals_list.dart';

class MealScreen extends StatelessWidget {

late Map<String,String> args;

 
  @override
  Widget build(BuildContext context) {
    
  Map<String,String> args =  ModalRoute.of(context)!.settings.arguments as Map<String, String>;
  String categoryTitle = args[CategoryItem.argsTitle] as String;
  String categoryID = args[CategoryItem.argsId] as String;

    return Scaffold(
      appBar: buildAppBar(categoryTitle),
      body: body(context,categoryID),
    );
  }


  Widget body(BuildContext context,String categoryID){
    return mealsList(context, categoryID);
  }
}