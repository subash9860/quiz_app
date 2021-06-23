import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  final answerText;
  final answerQ;
  Answer(this.answerQ, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: answerQ,
      ),
    );
  }
}
