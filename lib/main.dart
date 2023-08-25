import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refeicoes/data/dummy_data.dart';
import 'package:refeicoes/models/meal.dart';
import 'package:refeicoes/models/settings.dart';
import 'package:refeicoes/screens/categories_meals_screen.dart';
import 'package:refeicoes/screens/meals_details_screen.dart';
import 'package:refeicoes/screens/settings_screen.dart';
import 'package:refeicoes/screens/tabs_screens_2.dart';
import 'package:refeicoes/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _avaliableMeals = dummyMeals;
  List<Meal> _favotiteMeals = [];

  Settings settings = Settings();

  void _filterMeals(Settings settings) {
    setState(() {
      this.settings = settings;
      _avaliableMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  void _toggleFavotiveMeals(Meal meal) {
    setState(() {
      _favotiteMeals.contains(meal)
          ? _favotiteMeals.remove(meal)
          : _favotiteMeals.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favotiteMeals.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vamos cozinhar?",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        splashColor: Colors.amber,
        fontFamily: "Raleway",
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontSize: 20,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold),
            ),
      ),
      routes: {
        AppRoutes.HOME: (context) =>
            TabsScreensDois(favotiteMeals: _favotiteMeals),
        AppRoutes.CATEGORIES_MEALS: (ctx) =>
            CategoriesMealsScreen(meals: _avaliableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => MealsDatailsScreen(
            favoriteMeals: _toggleFavotiveMeals, isFavorite: _isFavorite),
        AppRoutes.SETTINGS: (ctx) =>
            SettingScreen(onSettingsChange: _filterMeals, settings: settings),
      },
    );
  }
}
