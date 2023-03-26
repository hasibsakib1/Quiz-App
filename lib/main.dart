// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 5,
        },
        {
          'text': 'Blue',
          'score': 4,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'Purple',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Dog',
          'score': 5,
        },
        {
          'text': 'Cat',
          'score': 4,
        },
        {
          'text': 'Rabbit',
          'score': 2,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {
          'text': 'Pasta',
          'score': 5,
        },
        {
          'text': 'Pizza',
          'score': 4,
        },
        {
          'text': 'Burger',
          'score': 3,
        },
        {
          'text': 'Biriyani',
          'score': 1,
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;

      // if (_questionIndex >= questions.length) {
      //   _questionIndex = 0;
      // }
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print('Reset done!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //remove debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
                restartQuiz: _restartQuiz,
              ),
      ),
    );
  }
}
