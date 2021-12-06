import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage2 extends StatefulWidget {
  final String title = "title";

  const SecondPage2({Key? key, }) : super(key: key);

  @override
  _SecondPage2State createState() => _SecondPage2State();
}

class _SecondPage2State extends State<SecondPage2> {
  String _phone = "";

  void _insertNumber(String character) {
    setState(() {
      if (character == "-") {
        _phone = _phone.substring(0, _phone.length - 1);
      } else {
        _phone = _phone + character;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String? title = args['title'];

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 200.0,
                      color: Colors.red,
                      child: Text(
                        _phone,
                        style: const TextStyle(fontSize: 24.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  numberButton('1', '@_@'),
                  numberButton('2', 'ABC'),
                  numberButton('3', 'DEF'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  numberButton('4', 'GHI'),
                  numberButton('5', 'JKL'),
                  numberButton('6', 'MNO'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  numberButton('7', 'PQRS'),
                  numberButton('8', 'TUV'),
                  numberButton('9', 'WXYZ'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(width: 100),
                  TextButton(
                      onPressed: () {
                        showMyDialog();
                      },
                      child: Text("D")),
                  numberButton('-', 'WXYZ'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget numberButton(String num, String letters) {
    return InkWell(
      onTap: () {
        _insertNumber(num);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              num,
              style: const TextStyle(fontSize: 48.0, height: 1),
            ),
            Text(
              letters,
              style: const TextStyle(fontSize: 12.0, height: 1),
            )
          ],
        ),
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.teal,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Future showMyDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text("Title"),
        content: const Text("This is content body"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, "OK");
            },
            child: const Text('OK'),
          )
        ],
      ),
    );
  }
}
