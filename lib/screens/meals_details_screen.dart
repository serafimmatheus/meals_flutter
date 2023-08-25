import 'package:flutter/material.dart';
import 'package:refeicoes/models/meal.dart';

class MealsDatailsScreen extends StatelessWidget {
  final Function(Meal meal) favoriteMeals;
  final Function(Meal meal) isFavorite;

  const MealsDatailsScreen({
    super.key,
    required this.favoriteMeals,
    required this.isFavorite,
  });

  Widget _createTitleSection(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _createContainerSection(Widget child) {
    return Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
          children: [
            Container(
              height: 300,
              child: Image.network(
                meal.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            _createTitleSection(context, "Ingredientes"),
            _createContainerSection(
              ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        meal.ingredients[index],
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    color: Theme.of(context).splashColor,
                  );
                },
              ),
            ),
            _createTitleSection(context, "Passos"),
            _createContainerSection(
              ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text("${index + 1}"),
                        ),
                        title: Text(meal.steps[index]),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(meal) ? Icons.star : Icons.star_border,
          size: 40,
        ),
        onPressed: () => favoriteMeals(meal),
      ),
    );
  }
}
