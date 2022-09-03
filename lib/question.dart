import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;

  const Question({super.key, this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      child: Text(
        questionText!,
        style: const TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
