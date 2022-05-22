// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../constants/padding_constants.dart';
import 'container_background.dart';
class CategoryItem extends StatelessWidget {
  
  final String title;
  final Color color;

  const CategoryItem(this.title,this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: allPadding10,
     alignment: Alignment.center,
     decoration: containerBackground(color: color),
     child: Text(title),
    );
  }

 

}