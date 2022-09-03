import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? selectHandler; 
  final String? answerText;

  const Answer({super.key, this.answerText, this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          onPressed: selectHandler,
          child: const Text('Answer 1')),
    );
  }
}
