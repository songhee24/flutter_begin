import 'package:flutter/material.dart';

// import 'package:flutter_first_app/question.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
          Question(
            questionText: questions[_questionIndex],
          ),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    ));
  }
}
