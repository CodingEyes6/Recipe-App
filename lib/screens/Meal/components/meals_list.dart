import 'package:flutter/cupertino.dart';


import 'meal_item.dart';
import '../../../models/meals.dart';

class MealsList extends StatefulWidget {
  final String categoryID;
 final List<Meal> availbleMeals;

  const MealsList(this.categoryID,this.availbleMeals);

  @override
  State<MealsList> createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {

  
late List<Meal> categoryMeals;
 
    @override
  void initState() {
    super.initState();
categoryMeals = widget.availbleMeals.where(
      (meal) {
        return meal.categories.contains(widget.categoryID);
      },
    ).toList();

  }

  @override
  Widget build(BuildContext context) {
    return mealsList();
  }

  ListView mealsList() {
   

    void removeItem(String mealID) {
      setState(() {
       
        categoryMeals.removeWhere(
          (element) {
            bool result = element.id == mealID;
           
            return result;
          },
        );
     
      });
    }

    return ListView.builder(
      itemBuilder: (ctx, index) {
    
        return MealItem(
          mealId: categoryMeals[index].id,
          mealTitle: categoryMeals[index].title,
          mealImageUrl: categoryMeals[index].imageUrl,
          mealDuration: categoryMeals[index].duration,
          mealComplexity: categoryMeals[index].complexity,
          mealAffordability: categoryMeals[index].affordability,
          removeMeal: removeItem,
        );
      },
      itemCount: categoryMeals.length,
    );
  }
}
