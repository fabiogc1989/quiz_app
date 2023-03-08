import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

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
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('answer 1!'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen!'),
              child: const Text('answer 2!'),
            ),
            ElevatedButton(
              onPressed: () {
                // ...
                print('Answer 3 chosen!');
              },
              child: const Text('answer 3!'),
            ),
          ],
        ),
      ),
    );
  }
}
