import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText, style: TextStyle(fontSize: 25),);
  }
}
