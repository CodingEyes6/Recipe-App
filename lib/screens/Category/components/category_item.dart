// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../styles/textstyles.dart';
import 'container_background.dart';
import '../../../constants/border_radius.dart';
import '../../../Colors/colors.dart';
import '../../../constants/padding.dart';
import '../../../Routes/routes.dart';

class CategoryItem extends StatelessWidget {


  static const argsId = 'id';
  static const argsTitle = 'title';
  

  final String categoryId;
  final String categoryTitle;
  final Color categoryColor;

  const CategoryItem(this.categoryId, this.categoryTitle, this.categoryColor);

  Map<String, String> selectedCategoryData() {
    return {CategoryItem.argsId: categoryId, CategoryItem.argsTitle: categoryTitle};
  }

  void selectCategory(BuildContext context) {
    AppRoutes.goToNextPage(
        context, AppRoutes.MEAL_SCREEN, data: selectedCategoryData());
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: primaryColor,
      borderRadius: borderCircular10,
      child: container(),
    );
  }

  Widget container() {
    return Container(
      padding: allPadding10,
      alignment: Alignment.center,
      decoration: containerBackground(color: categoryColor),
      child: categoryText(),
    );
  }

  Widget categoryText() {
    return Text(
      categoryTitle,
     style: titleTextStyle,
    );
  }
}
