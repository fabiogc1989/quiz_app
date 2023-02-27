import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: const [
            Text('question!'),
            ElevatedButton(
              onPressed: null,
              child: Text('answer 1!'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('answer 2!'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('answer 3!'),
            ),
          ],
        ),
      ),
    );
  }
}
