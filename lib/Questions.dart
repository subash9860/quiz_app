import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return SizedBox( child: Text(questionText, style: TextStyle(fontSize: 25),));
  }
}
