// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
        body: const Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}
