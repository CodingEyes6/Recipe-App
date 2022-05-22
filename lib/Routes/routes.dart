

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyRoutes {

 static void goToNextPage(BuildContext context,Widget screen){
  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen ));
 }



}