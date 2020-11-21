import 'package:flutter/material.dart';
import 'package:quizz_app/answer.dart';
import './qustioin.dart';

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
            ? Column(
                children: [
                  Question(
                    _questionList[_questionIndex]['Q'],
                  ),
                  ...(_questionList[_questionIndex]['A'] as List<String>)
                      .map((answer) {
                    return Answer(_chooseAnswer, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You Did it !'),
              ),
      ),
    );
  }
}
