import 'package:flutter/material.dart';

import 'package:quiz_app/Questions.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> question;
  final Function answer;
  final questionIndex;

  Quiz(this.question, this.questionIndex, this.answer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Question(
              question[questionIndex]['qn'].toString(),
            ),
          ),
        ),
        ...(question[questionIndex]['ans'] as List<Map<String, Object>>)
            .map((e) => Answer(()=>answer(e['score']), e['text']))
            .toList(),
      ],
    );
  }
}
