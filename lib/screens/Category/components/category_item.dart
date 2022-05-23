// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../styles/textstyles.dart';
import 'container_background.dart';
import '../../../constants/border_radius.dart';
import '../../../Colors/colors.dart';
import '../../../constants/padding_constants.dart';
import '../../../Routes/routes.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color);

  Map<String, String> selectedCategoryData() {
    return {'id': id, 'title': title};
  }

  void selectCategory(BuildContext context) {
    AppRoutes.goToNextPage(
        context, AppRoutes.CATEGORY_SCREEN, selectedCategoryData());
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
      decoration: containerBackground(color: color),
      child: categoryText(),
    );
  }

  Widget categoryText() {
    return Text(
      title,
     style: titleTextStyle,
    );
  }
}
