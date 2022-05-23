
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../components/appBar.dart';

class MealScreen extends StatelessWidget {

late Map<String,String> args;

 void routeArgs(BuildContext context){
   args =  ModalRoute.of(context)!.settings.arguments as Map<String, String>;
}
  @override
  Widget build(BuildContext context) {
  routeArgs(context);
    return Scaffold(
      appBar: buildAppBar(args['title' ]!),
      body: Center(child: Text(args['title']!)),
    );
  }
}