
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
  final categoryTitle = args[CategoryItem.argsTitle];
  final categoryID = args[CategoryItem.argsId];

    return Scaffold(
      appBar: buildAppBar(categoryTitle!),
      body: body(categoryID!),
    );
  }

  Widget body(String categoryID){
    return MealsList(categoryID);
  }
}