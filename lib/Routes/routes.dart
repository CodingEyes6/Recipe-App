

// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppRoutes {

static const CATEGORY_SCREEN = "Category";
static const HOME_SCREEN = "/";
static const MEAL_DETAIL_SCREEN = "MealDetail";
static const FAVOURITE_SCREEN = "FavoutiteCategory";
static const MEAL_SCREEN = "MealScreen";
static const FILTER_SCREEN = "FilterScreen";


 static void goToNextPage(BuildContext ctx,String path,{Map<String,Object>? data}){

 if(data != null){
    Navigator.of(ctx).pushNamed(path,arguments: data);
    return;
 }

   Navigator.of(ctx).pushNamed(path);
 

 
 }

 static void goToNextPageWIthArgs(BuildContext ctx,String path,{Object? data}){

 if(data != null){
    Navigator.of(ctx).pushNamed(path,arguments: data);
    return;
 }

   Navigator.of(ctx).pushNamed(path);
 

 
 }


}