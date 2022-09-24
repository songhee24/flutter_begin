import 'package:flutter/material.dart';

///  Created by mac on 24/9/22.
class OutputText extends StatelessWidget {
  final String? text;

  const OutputText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'Apple SD Gothic Neo',
      ),
    );
  }
}
