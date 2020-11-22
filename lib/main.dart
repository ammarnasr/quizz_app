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
  final _questionList = const [
    {
      'Q': 'What is your faviorte TV show',
      'A': ['GOT', 'AOT', 'Sherlock', 'Paranormal']
    },
    {
      'Q': 'What is your faviorte Movie',
      'A': ['The Platform', 'The Dark Knight', 'Toy Story', 'The 6th Sense']
    },
    {
      'Q': 'What is your faviorte Food',
      'A': ['Pasta', 'Fool', 'Dakwa', 'All of the above, but Mixed!']
    },
  ];

  void _chooseAnswer() {
    setState(() {
      _questionIndex += 1;
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
            ? Quiz (questionList: _questionList,
                    questionIndex: _questionIndex,
                    answerQuestion: _chooseAnswer)
            : Result(),
      ),
    );
  }
}
