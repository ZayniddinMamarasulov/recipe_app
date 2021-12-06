import 'package:flutter/material.dart';
import 'package:second_lesson/models/recipe.dart';
import 'package:second_lesson/screens/second_page.dart';
import 'package:second_lesson/widgets/recipe_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage()
      },
      title: 'Mening dasturim',
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipe App',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      body: ListView.builder(
          itemCount: Recipe.recipes.length,
          itemBuilder: (BuildContext context, int index) {
            return recipeCard(context, Recipe.recipes[index]);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
