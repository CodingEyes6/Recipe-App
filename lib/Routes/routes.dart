

// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppRoutes {

static const CATEGORY_SCREEN = "Categories";
static const HOME_SCREEN = "/";



 static void goToNextPage(BuildContext ctx,String path,Map<String,Object> data){
  Navigator.of(ctx).pushNamed(path,arguments: data);
 }


}