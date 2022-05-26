import 'package:flutter/material.dart';
import '../../../constants/padding.dart';
import '../../../styles/textstyles.dart';
import '../../../constants/border_radius.dart';
import '../../../components/rouned_image.dart';
import '../../../models/meals.dart';
import '../../../Routes/routes.dart';


class MealItem extends StatelessWidget {
  final String mealId;
  final String mealTitle;
  final String mealImageUrl;
  final int mealDuration;
  final Complexity mealComplexity;
  final Affordability mealAffordability;
  final Function removeMeal;

  const MealItem(
      {required this.mealId,
      required this.mealTitle,
      required this.mealImageUrl,
      required this.mealDuration,
      required this.mealComplexity,
      required this.mealAffordability,
      required this.removeMeal});

  String get complexityText {
    switch (mealComplexity) {
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

  String get affordabilityText {
    switch (mealAffordability) {
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

  void selectMeal(BuildContext ctx) {
    // Navigator.of(ctx)
    //     .pushNamed(AppRoutes.MEAL_DETAIL_SCREEN, arguments: mealId)
    //     .then(
    //       (value) {
    //         if(value != null){
    //           removeMeal(value);
    //         }
    //       },
    //     );

    AppRoutes.goToNextPageWIthArgs(
      ctx,
      AppRoutes.MEAL_DETAIL_SCREEN,
      data: mealId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
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
        mealImageUrl,
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
        mealTitle,
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
          buildItem('$mealDuration min', Icons.schedule),
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
        const SizedBox(
          width: 6,
        ),
        Text(text),
        const SizedBox(
          width: 6,
        ),
      ],
    );
  }
}
