import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;
  const Result({super.key, this.resultScore});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You did it!'));
  }
}
