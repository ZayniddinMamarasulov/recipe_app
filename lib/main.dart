import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:second_lesson/screens/second_page.dart';
import 'package:second_lesson/widgets/recipe_card.dart';
import 'package:http/http.dart' as http;

import 'models/food.dart';

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
  List<Food> foods = [];

  getRecipes() async {
    String url = "https://api.edamam.com/api/food-database/"
        "v2/parser"
        "?app_id=a2aeae06"
        "&app_key=d924c48a5d7b0e3c9469545106dbbe03"
        "&ingr=oil";
    Uri myUri = Uri.parse(url);

    var response = await http.get(myUri);

    Map<String, dynamic> jsonData = jsonDecode(response.body);

    jsonData['hints'].forEach((item) {
      Food food = Food.fromMap(item['food']);

      if (food.image != null) foods.add(food);

      print(food);
    });
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipe App',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (BuildContext context, int index) {
              return recipeCard(context, foods[index]);
            }),
      ),
    );
  }
}
