import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? selectHandler; 
  final String? answerText;

  const Answer({super.key, this.selectHandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          onPressed: selectHandler!,
          child: const Text('Answer 1')),
    );
  }
}
