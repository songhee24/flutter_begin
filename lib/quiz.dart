import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final int? questionIndex;
  final VoidCallback? answerQuestion;

  const Quiz(
      {super.key, this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questions![questionIndex!]['questionText'] as String,
        ),
        ...(questions![questionIndex!]['answers'] as List<String>)
            .map((answer) {
          return Answer(
            selectHandler: answerQuestion,
            answerText: answer,
          );
        }).toList()
      ],
    );
  }
}
