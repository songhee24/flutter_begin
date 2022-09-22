import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final int? questionIndex;
  final Function(int score)? answerQuestion;

  const Quiz(
      {super.key, this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questions![questionIndex!]['questionText'] as String,
        ),
        ...(questions![questionIndex!]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              selectHandler: () => answerQuestion!(answer['score'] as int),
              answerText: answer['text'] as String,
            );
          },
        ).toList(),
      ],
    );
  }
}
