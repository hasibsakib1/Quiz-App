import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
        ),
        child: Text(answerText),
      ),
    );
  }
}
