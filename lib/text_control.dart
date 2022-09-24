import 'package:flutter/material.dart';

///  Created by mac on 24/9/22.
class TextControl extends StatelessWidget {
  final VoidCallback? changeText;

  const TextControl({Key? key, this.changeText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeText,
      child: const Text('Change text'),
    );
  }
}
