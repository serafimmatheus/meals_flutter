import 'package:flutter/material.dart';
import 'package:refeicoes/components/meal_item.dart';
import 'package:refeicoes/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favotiteMeals;
  const FavoriteScreen({super.key, required this.favotiteMeals});

  @override
  Widget build(BuildContext context) {
    if (favotiteMeals.isEmpty) {
      return Center(
        child: Text("Você não tem nenhuma comida marcada como favorita!"),
      );
    } else {
      return ListView.builder(
        itemCount: favotiteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(meal: favotiteMeals[index]);
        },
      );
    }
  }
}
