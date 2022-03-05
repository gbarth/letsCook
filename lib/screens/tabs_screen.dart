import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorite_screen.dart';
import '../components/main_drawer.dart';
import '../models/meals.dart';

class TabsScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  // ignore: use_key_in_widget_constructors
  const TabsScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Let\'sCook'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        drawer: const MainDrawer(),
        body: TabBarView(
          children: [
            const CategoriesScreen(),
            FavoriteScreen(favoriteMeals),
          ],
        ),
      ),
    );
  }
}
