import 'package:flutter/material.dart';
import 'package:meals_app/Colors/colors.dart';
import '../../../styles/textstyles.dart';
import '../../../models/meals.dart';

Widget mealsDetailItem(Meal meal) {
  return Column(
    children: [
      mealImage(meal.imageUrl),
      const SizedBox(
        height: 10,
      ),
      buildSectionTitle(meal.title),
      ingrediantsList(meal)
    ],
  );
}

Widget mealImage(String imageUrl) {
  return SizedBox(
    width: double.infinity,
    height: 150,
    child: Image.network(
      imageUrl,
      fit: BoxFit.cover,
    ),
  );
}



Widget buildSectionTitle(String title){
return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      title,
      style: titleTextStyle,
    ),
  );
}

Widget ingrediantsList(Meal m) {
  return Container(
    width: 300,
    height: 170,
    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
    decoration: ingrediantBox(),
    child: ListView.builder(
      itemBuilder: (ctx, index) {
        return ingrediantItem(m.ingredients[index]);
      },
      itemCount: m.ingredients.length,
    ),
  );
}


BoxDecoration ingrediantBox(){
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10)
  );
}

Widget ingrediantItem(String ingrediants){

return Card(
  color: accentColor,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(ingrediants),
  ),
);

}
