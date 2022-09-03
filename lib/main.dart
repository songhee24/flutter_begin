import 'package:flutter/material.dart';

void main() {
  const myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuestion() {
    print('Answer Chosen !');
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color ?",
      'What\s yout favorite animal ?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Column(
        children: <Widget>[
          const Text("The question!"),
          ElevatedButton(
              onPressed: () => answerQuestion(), child: const Text('Answer 1')),
          ElevatedButton(
              onPressed: answerQuestion, child: const Text('Answer 2')),
          ElevatedButton(
              onPressed: () => {print('Answer Chosen !')},
              child: const Text('Answer 3')),
        ],
      ),
    ));
  }
}
