import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  var restart;
  Result(this.resultScore, this.restart);

  String get resultPharse {
    var resultText = 'You did it!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(30, 150, 30, 30),
          height: 300,
          decoration: BoxDecoration(color: Colors.teal),
          child: SizedBox(
            child: Center(
              child: Text(
                'Well Done, You score $resultScore.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        ElevatedButton(onPressed: restart, child: Text("Reset Quiz"))
      ],
    );
  }
}
