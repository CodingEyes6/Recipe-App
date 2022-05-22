import 'package:flutter/material.dart';
import '../category_data.dart';
import 'category_item.dart';

List<Widget> categoryItemsList() {
  return DUMMY_CATEGORIES.map(
    (category) {
      return CategoryItem(category.id,category.title, category.color);
    },
  ).toList();
}
