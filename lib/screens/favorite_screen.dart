import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/meal-item.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return favoriteMeals.isEmpty
        ? Center(
            child: Text('You have no favorite yet'),
          )
        : ListView.builder(
            itemBuilder: (context, index) {return mealItem(favoriteMeals[index]);},
            itemCount: favoriteMeals.length,
          );
  }
}
