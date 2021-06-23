import 'package:flutter/material.dart';

import 'package:quiz_app/Questions.dart';
import 'package:quiz_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _ans() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //  List< Map< String,List >>
    var questions =
        // var questions =
        [
      {
        'qn': 'what is your country name?',
        'ans': ['Nepal', 'India', 'kathmandu', 'USA']
      },
      {
        'qn': 'which language does Flutter use?',
        'ans': ['Python', 'C++', 'Dart', 'Java']
      },
      {
        'qn': 'Flutter use for',
        'ans': ['App', 'Web', 'Desktop', 'All of the above']
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Center(
                      child: Question(
                questions[_questionIndex]['qn'].toString(),
              ))),
              ...(questions[_questionIndex]['ans'] as List<String>)
                  .map((e) => Answer(_ans, e))
                  .toList(),
            ],
          )),
    );
  }
}
