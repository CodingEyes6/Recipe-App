
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../components/appBar.dart';

import 'meals_list.dart';

class MealScreen extends StatelessWidget {

late Map<String,String> args;

 void routeArgs(BuildContext context){
   args =  ModalRoute.of(context)!.settings.arguments as Map<String, String>;
}
  @override
  Widget build(BuildContext context) {
  routeArgs(context);
  final categoryTitle = args['title' ];
   final categoryID = args['id' ];
    return Scaffold(
      appBar: buildAppBar(categoryTitle!),
      body: body(context,categoryID!),
    );
  }


  Widget body(BuildContext context,String categoryID){
    return mealsList(context, categoryID);
  }
}