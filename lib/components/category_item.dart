import 'package:flutter/material.dart';

import 'package:lets_cook/models/category.dart';
import '../screens/categories_meals_screen.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  void _selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/categories-meals',
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          category.title,
          style: const TextStyle(
            fontFamily: 'Raleway',
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.8),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
