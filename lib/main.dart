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
  final List<Map<String, Object>> questions = const [
    {
      "questionText": "What's your favorite color ?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": 'What\s yout favorite animal ?',
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
    },
    {
      "questionText": 'Who\s your favorite instructor ?',
      "answers": ["Max", "Aza", "Sardor", "Zamir"]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += _questionIndex + 1;
    });

    if(_questionIndex < questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // if my value stored in some address has modifire const
    // we cant' add something into the value
    // var dummy = const ['hello'];
    // dummy.add('aza');
    // print(dummy);

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Column(
        children: <Widget>[
          Question(
            questionText: questions[_questionIndex]['questionText'] as String,
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(
              selectHandler: _answerQuestion,
              answerText: answer,
            );
          }).toList()
        ],
      ),
    ));
  }
}
