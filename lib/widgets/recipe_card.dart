import 'package:flutter/material.dart';
import 'package:second_lesson/models/recipe.dart';
import 'package:second_lesson/screens/second_page.dart';

Widget recipeCard(BuildContext context, Recipe recipe) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, '/second', arguments: {'recipe': recipe});
    },
    child: Card(
      child: Column(
        children: [
          Image.asset(recipe.imageUrl),
          Text(
            recipe.label,
            style: const TextStyle(fontSize: 18),
          ),
          Text(
            recipe.label,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    ),
  );
}
