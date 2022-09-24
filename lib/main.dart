// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_first_app/output_text.dart';
import 'package:flutter_first_app/text_control.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  String _text = 'Hello world';
  void _changeTextHandler() {
    setState(() {
      _text = 'Changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Flutter journey part 2',
            style: TextStyle(
              fontFamily: "Apple SD Gothic Neo",
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              OutputText(text: _text),
              TextControl(
                changeText: _changeTextHandler,
              )
            ],
          ),
        ),
      ),
    );
  }
}
