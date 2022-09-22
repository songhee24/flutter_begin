import 'package:flutter/material.dart';
import 'package:flutter_first_app/quiz.dart';
import 'package:flutter_first_app/result.dart';

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
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "White", "score": 3},
        {"text": "Green", "score": 1},
      ]
    },
    {
      "questionText": 'What\s yout favorite animal ?',
      "answers": [
        {"text": "Rabbit", "score": 3},
        {"text": "Snake", "score": 11},
        {"text": "Elephant", "score": 5},
        {"text": "Lion", "score": 9},
      ]
    },
    {
      "questionText": 'Who\s your favorite instructor ?',
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Aza", "score": 1},
        {"text": "Sardor", "score": 1},
        {"text": "Zamir", "score": 1},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += _questionIndex + 1;
    });

    if (_questionIndex < questions.length) {
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
            body: _questionIndex < questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: questions,
                    questionIndex: _questionIndex,
                  )
                : const Result(
                    resultText: 'You Done!',
                  )));
  }
}
