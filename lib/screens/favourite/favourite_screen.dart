import 'package:flutter/material.dart';
import '../../models/meals.dart';
import '../Meal/components/meal_item.dart';


class FavouriteScreen extends StatelessWidget {


  final List<Meal> favouriteMeals;

  const FavouriteScreen(this.favouriteMeals);
  

  @override
  Widget build(BuildContext context) {

 if(favouriteMeals.isEmpty){
    return const Center(child: Text("You have no favourites yet - start add some"));
 }
else{
  return ListView.builder(
      itemBuilder: (ctx, index) {
    
        return MealItem(
          mealId: favouriteMeals[index].id,
          mealTitle: favouriteMeals[index].title,
          mealImageUrl: favouriteMeals[index].imageUrl,
          mealDuration: favouriteMeals[index].duration,
          mealComplexity: favouriteMeals[index].complexity,
          mealAffordability: favouriteMeals[index].affordability,
          removeMeal: (){},
        );
      },
      itemCount: favouriteMeals.length,
    );
}
   
    
  }
}