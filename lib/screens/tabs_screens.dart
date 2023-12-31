import 'package:flutter/material.dart';
import 'package:refeicoes/screens/categories_screen.dart';
import 'package:refeicoes/screens/favorite_screen.dart';

class TabsScreens extends StatelessWidget {
  const TabsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Vamos Cozinhar?"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: "Categorias",
            ),
            Tab(
              icon: Icon(Icons.star),
              text: "Favoritos",
            )
          ]),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          // FavoriteScreen(),
        ]),
      ),
    );
  }
}
