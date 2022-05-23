// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'components/category_items_list.dart';


import '../../constants/padding_constants.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  Widget body() {
    return GridView(
      padding: allPadding10,
      gridDelegate: gridDelegate,
      children: categoryItemsList(),
    );
  }

  var gridDelegate = const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20);
}
