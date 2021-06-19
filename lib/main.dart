import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void ans() {
      print("Ans choosen!");
    }
    var questions = [
      "what's your favourite actores?",
      " Are a computer student?"
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
                      child:
                          Text(questions[0], style: TextStyle(fontSize: 25)))),
              Container(
                  width: 385,
                  height: 60,
                      child: ElevatedButton(
                          child: Text("Answer 1"), onPressed: ans)),
              Divider(),
              Container(
                  width: 385,
                  height: 60,
                      child: ElevatedButton(
                          child: Text("Answer 1"), onPressed: () {})),//),
              Divider(),
              Container(
                  width: 385,
                  height: 60,
                      child: ElevatedButton(
                          child: Text("Answer 1"), onPressed: () {})),
              Divider(),
              Container(
                  width: 385,
                  height: 60,
                      child: ElevatedButton(
                          child: Text("Answer 1"), onPressed: () {})),
              Divider(),
            ],
          )),
    );
  }
}
