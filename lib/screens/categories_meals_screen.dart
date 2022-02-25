import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    return Scaffold(
      backgroundColor: category.color,
      appBar: AppBar(
        centerTitle: true,
        title: Text(category.title),
      ),
      body: const Center(
        child: Text('Nenhuma Receita'),
      ),
    );
  }
}
