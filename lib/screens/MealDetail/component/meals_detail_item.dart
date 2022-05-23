import 'package:flutter/material.dart';
import 'package:meals_app/Colors/colors.dart';
import '../../../styles/textstyles.dart';
import '../../../models/meals.dart';

Widget mealsDetailItem(Meal meal) {
  return SingleChildScrollView(
    child: Column(
      children: [
        mealImage(meal.imageUrl),
        const SizedBox(height: 10),
        buildSectionTitle(meal.title),
        ingrediantsList(meal),
        const SizedBox(height: 5),
        buildSectionTitle("Steps"),
        stepsList(meal)
      ],
    ),
  );
}

Widget mealImage(String imageUrl) {
  return SizedBox(
    width: double.infinity,
    height: 200,
    child: Image.network(
      imageUrl,
      fit: BoxFit.cover,
    ),
  );
}

Widget buildSectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      title,
      style: titleTextStyle,
    ),
  );
}

Widget ingrediantsList(Meal m) {
  return buildContainer(
    child: ListView.builder(
      itemBuilder: (ctx, index) {
        return ingrediantItem(m.ingredients[index]);
      },
      itemCount: m.ingredients.length,
    ),
  );
}

BoxDecoration ingrediantBox() {
  return BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10));
}

Widget buildContainer({Widget? child}) {
  return Container(
    width: 300,
    height: 180,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    decoration: ingrediantBox(),
    child: child,
  );
}

Widget ingrediantItem(String ingrediants) {
  return Card(
    color: accentColor,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(ingrediants),
    ),
  );
}

Widget stepsList(Meal m) {
  return buildContainer(
    child: ListView.builder(
      itemBuilder: (ctx, index) {
        return stepItem(index + 1,m.steps[index]);
      },
      itemCount: m.steps.length,
    ),
  );
}

Widget stepItem(int index,String steps) {
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(child: Text('# $index')),
        title: Text(steps),
      ),
      const Divider(thickness: 2,)
    ],
  );
}
