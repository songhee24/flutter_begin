import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppWithState();
  }
}

class MyAppWithState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += questionIndex + 1;
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
          Text(questions[questionIndex]),
          ElevatedButton(
              onPressed: () => answerQuestion(), child: const Text('Answer 1')),
          ElevatedButton(
              onPressed: answerQuestion, child: const Text('Answer 2')),
          ElevatedButton(
              onPressed: () => {print('Answer Chosen !')},
              child: const Text('Answer 3')),
        ],
      ),
    ));
  }
}
