import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;

  const Question({super.key, this.questionText});  

  @override
  Widget build(BuildContext context) {
    return Text(questionText!);
  }
}