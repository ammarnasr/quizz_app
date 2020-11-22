import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questionList = const [
    {
      'Q': 'What is your faviorte TV show',
      'A': [
        {'text': 'GOT', 'score': 5},
        {'text': 'AOT', 'score': 7},
        {'text': 'Sherlock', 'score': 8},
        {'text': 'Paranormal', 'score': 1}
      ]
    },
    {
      'Q': 'What is your faviorte Movie',
      'A': [
        {'text': 'Home Alone', 'score': 4},
        {'text': 'The Dark Knight', 'score': 8},
        {'text': 'Toy Story', 'score': 5},
        {'text': 'The Sixth Sense', 'score': 6}
      ]
    },
    {
      'Q': 'What is your faviorte Food',
      'A': [
        {'text': 'Pasta', 'score': 6},
        {'text': 'fool', 'score': 2},
        {'text': 'Dakwe', 'score': 9},
        {'text': 'All of them, but Mixed!', 'score': 50}
      ]
    },
  ];

  void _chooseAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_totalScore);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZZ Player'),
        ),
        body: _questionIndex < _questionList.length
            ? Quiz(
                questionList: _questionList,
                questionIndex: _questionIndex,
                answerQuestion: _chooseAnswer)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
