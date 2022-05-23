import 'package:flutter/material.dart';
import '../../../constants/padding_constants.dart';
import '../../../styles/textstyles.dart';
import '../../../constants/border_radius.dart';
import '../../../components/rouned_image.dart';
import '../../../models/meals.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
  });


 String get complexityText{

switch (complexity) {
  case Complexity.Simple:
  return 'simple';
    case Complexity.Challenging:
  return 'challenging';
    case Complexity.Hard:
  return 'hard';
  default:
  return 'unKnown';
}

 }

 String get affordabilityText{

switch (affordability) {
  case Affordability.Affordable:
  return 'affordable';
    case Affordability.Pricey:
  return 'pricey';
    case Affordability.Luxurious:
  return 'Expensive';
  default:
  return 'unKnown';
}

 }

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: customCard(),
    );
  }

  Widget customCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderCircular15),
      elevation: 5,
      margin: allMargin10,
      child: Column(
        children: [
          buildTopPart(),
          buildBottomPart(),
        ],
      ),
    );
  }

  Widget buildTopPart() {
    return Stack(
      children: [
        mealsImage(),
        Positioned(
          bottom: 20,
          right: 10,
          child: mealsTitle(),
        ),
      ],
    );
  }

  Widget mealsImage() {
    return roundedImage(
      const BorderRadius.only(
          topLeft: radiousCircular15, topRight: radiousCircular15),
      Image.network(
        imageUrl,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget mealsTitle() {
    return Container(
      width: 300,
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Text(
        title,
        style: mealsTitleTextStyle,
        softWrap: true,
        overflow: TextOverflow.fade,
      ),
    );
  }

  Widget buildBottomPart() {
    return Padding(
      
      padding: allPadding20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildItem('$duration min', Icons.schedule),
           buildItem(complexityText, Icons.work),
             buildItem(complexityText, Icons.attach_money),
        ],
      ),
    );
  }

  Widget buildItem(String text, IconData icon) {
    
    return Row(
      children: [
          Icon(icon),
       
        const SizedBox(width: 6,),
       Text(text),
         const SizedBox(width: 6,),
      ],
    );
  }
}
