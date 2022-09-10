import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String? resultText;
  const Result({super.key, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultText!));
  }
}