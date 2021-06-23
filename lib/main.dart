import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'qn': 'what is your country name?',
      'ans': [
        {'text': 'Nepal', 'score': 1},
        {'text': 'India', 'score': 0},
        {'text': 'Kathmandu', 'score': 0},
        {'text': 'USA', 'score': 0},
      ]
    },
    {
      'qn': 'which language does Flutter use?',
      'ans': [
        {'text': 'Python', 'score': 0},
        {'text': 'C++', 'score': 0},
        {'text': 'Dart', 'score': 1},
        {'text': 'Js', 'score': 0},
      ]
    },
    {
      'qn': 'Flutter use for',
      'ans': [
        {'text': 'Web', 'score': 0},
        {'text': 'App', 'score': 0},
        {'text': 'Desktop', 'score': 0},
        {'text': 'All of the Above', 'score': 1},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _ans(int score) {
    _totalscore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print('No more questions left');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(_questions, _questionIndex, _ans)
            : Result(_totalscore, _restart),
      ),
    );
  }
}
