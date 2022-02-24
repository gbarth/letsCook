import 'package:flutter/material.dart';
import 'package:lets_cook/components/category_item.dart';
import 'package:lets_cook/main.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.1, 0.3, 0.5, 0.7, 0.9],
        colors: [
          Color.fromARGB(115, 255, 82, 59),
          Color.fromARGB(123, 244, 193, 54),
          Color.fromARGB(120, 67, 181, 63),
          Color.fromARGB(118, 0, 10, 150),
          Color.fromARGB(123, 202, 0, 67),
        ],
      )),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80,
          title: const SizedBox(
            child: Text('Let\'sCook'),
          ), //const Center(child: Text('Let\'sCook')),
        ),
        body: GridView(
          padding: const EdgeInsets.all(21),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES.map((cat) {
            return CategoryItem(cat);
          }).toList(),
        ),
      ),
    );
  }
}
