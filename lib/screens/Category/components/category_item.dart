// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:meals_app/constants/border_radius.dart';
import '../../../Colors/colors.dart';
import '../../../constants/padding_constants.dart';
import 'container_background.dart';
import 'styles.dart';
import '../../../Routes/routes.dart';
import '../../Meal/meals_screen.dart';
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id,this.title,this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MyRoutes.goToNextPage(context,MealScreen(id,title)),
      splashColor: primaryColor,
      borderRadius: borderCircular10,
      child: container(),
    );

  }

Widget container(){
  return Container(
       padding: allPadding10,
       alignment: Alignment.center,
       decoration: containerBackground(color: color),
       child: Text(title,style: categoryTitleTextStyle,),
      );
}
 

}