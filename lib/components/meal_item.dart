import 'package:flutter/material.dart';

import '../models/meals.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    child: Text(
                      meal.title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'Lobster',
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6),
                      Text(
                        '${meal.duration} min',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 6),
                      Text(
                        meal.complexityText,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(width: 6),
                      Text(
                        meal.costText,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
