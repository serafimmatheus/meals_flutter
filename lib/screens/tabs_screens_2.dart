import 'package:flutter/material.dart';
import 'package:refeicoes/components/main_drawer.dart';
import 'package:refeicoes/models/meal.dart';
import 'package:refeicoes/screens/categories_screen.dart';
import 'package:refeicoes/screens/favorite_screen.dart';

class TabsScreensDois extends StatefulWidget {
  final List<Meal> favotiteMeals;

  const TabsScreensDois({Key? key, required this.favotiteMeals})
      : super(key: key);

  @override
  State<TabsScreensDois> createState() => _TabsScreensDoisState();
}

class _TabsScreensDoisState extends State<TabsScreensDois> {
  int _selectedScreenIndex = 0;
  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        "title": "Categorias",
        "screens": CategoriesScreen(),
      },
      {
        "title": "Favoritos",
        "screens": FavoriteScreen(favotiteMeals: widget.favotiteMeals),
      }
    ];
  }

  _selectedScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]["title"] as String),
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]["screens"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedScreen,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).splashColor,
          currentIndex: _selectedScreenIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categorias", // Atualizado de title para label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favoritos", // Atualizado de title para label
            )
          ]),
    );
  }
}
