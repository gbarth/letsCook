import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

import 'screens/categories_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LetsCook',
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 0, 0, 0),
          secondary: const Color.fromARGB(255, 252, 252, 252),
        ),
        fontFamily: 'Lobster',
        textTheme: ThemeData.dark().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 30,
              ),
            ),
      ),
      home: const CategoriesScreen(),
      routes: {
        '/categories-meals': (context) => CategoriesMealsScreen(),
      },
    );
  }
}
