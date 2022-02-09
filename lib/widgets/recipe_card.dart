import 'package:flutter/material.dart';
import 'package:second_lesson/models/food.dart';

Widget recipeCard(BuildContext context, Food food) {
  return InkWell(
    onTap: () {
      // Navigator.pushNamed(context, '/second', arguments: {'recipe': food});
    },
    child: Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  food.category!,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image(
            image: NetworkImage(food.image!),
            fit: BoxFit.fitWidth,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              food.label!,
              style: const TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    ),
  );
}
