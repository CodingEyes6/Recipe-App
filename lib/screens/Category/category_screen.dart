// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'components/category_items_list.dart';
import '../../components/appBar.dart';
import '../../constants/app_bar_titles.dart';
import '../../constants/padding_constants.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: buildAppBar(categoryScreenAppBarTitle),
      body: Container(
        margin: allMargin10,
        child: GridView(
          gridDelegate: gridDelegate,
          children: categoryItemsList(),
        ),
      ),
    );
  }

final gridDelegate = const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
      );

}
