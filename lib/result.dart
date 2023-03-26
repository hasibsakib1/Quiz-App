// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;
  Result({
    required this.resultScore,
    required this.restartQuiz,
  });
  String get resultMessage {
    String resultText = 'YAYY\nYou got $resultScore marks.';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget> [
          Text(
            resultMessage,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restartQuiz,
            child: Text('Restart quiz'),
          )
        ],
      ),
    );
  }
}
