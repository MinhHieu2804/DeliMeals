import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import '../widgets/meal_item.dart';

class FavotiteScreen extends StatelessWidget {
  final List<Meal> favoritedMeals;
  FavotiteScreen(this.favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritedMeals.isEmpty) {
      return Center(
        child: Text('You have no favorite yet - start adding some!'),
      );
    }
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return MealItem(
          id: favoritedMeals[index].id,
          title: favoritedMeals[index].title,
          imageUrl: favoritedMeals[index].imageUrl,
          duration: favoritedMeals[index].duration,
          complexity: favoritedMeals[index].complexity,
          affordability: favoritedMeals[index].affordability,
        );
      },
      itemCount: favoritedMeals.length,
    );
  }
}
