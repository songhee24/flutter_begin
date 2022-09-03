import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppWithState();
  }
}

class _MyAppWithState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color ?",
      'What\s yout favorite animal ?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Column(
        children: <Widget>[
          Text(questions[_questionIndex]),
          ElevatedButton(
              onPressed: () => _answerQuestion(), child: const Text('Answer 1')),
          ElevatedButton(
              onPressed: _answerQuestion, child: const Text('Answer 2')),
          ElevatedButton(
              onPressed: () => {print('Answer Chosen !')},
              child: const Text('Answer 3')),
        ],
      ),
    ));
  }
}
