import 'package:flutter/material.dart';

void main() {
  const myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF1BB841),
              centerTitle: false,
              title: const Text('Сборы'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  onPressed: () => {},
                )
              ],
            ),
            body: Container(
              padding: const EdgeInsets.all(16),
              child: Container(
                  width: double.infinity,
                  child: Container(
                    height: 277,
                    decoration: BoxDecoration(
                        color: Color(0xFF1BB841),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        border: Border.all(
                          width: 3.0,
                          color: Colors.green,
                          style: BorderStyle.solid,
                        )),
                    child: Center(child: const Text('Количество пользователей:')),
                  )),
            )));
  }
}
