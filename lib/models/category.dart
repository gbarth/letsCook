import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final IconData categoryIcon;

  const Category ({
    required this.id,
    required this.title,
    required this.categoryIcon,
    this.color = const Color.fromARGB(255, 4, 18, 92),
  });
}
