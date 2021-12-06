import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_lesson/models/recipe.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Recipe>;

    Recipe? recipe = args['recipe'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                recipe!.info,
                style: const TextStyle(fontSize: 24.0),
              ),
              TextButton(
                child: Text("Orqaga"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24.0),
              TextButton(
                child: const Text('Show me dialog'),
                onPressed: () {
                  myDialog();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future myDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('bu title'),
        content: const Text("Bu yerda uzun va katta matn bo'lishi mumkin edi"),
        actions: [
          TextButton(
            child: const Text('NO'),
            onPressed: () {
              Navigator.pop(context, "no");
            },
          ),
          TextButton(
            child: const Text('OKAY'),
            onPressed: () {
              Navigator.pop(context, "ok");
            },
          ),
        ],
      ),
    );
  }
}
