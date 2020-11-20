import 'package:flutter/material.dart';
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
  var _questionList = ['Favourit Tv show?', 'Faviourt Movie?'];

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
        body: Column(
          children: [
            Question(
              _questionList[_questionIndex],
            ),
            RaisedButton(
              onPressed: _chooseAnswer,
              child: Text('Ans1'),
            ),
            RaisedButton(
              onPressed: () => print('Second Answer Chosen!'),
              child: Text('Ans2'),
            ),
            RaisedButton(
              onPressed: () {
                print('Third Answer Chosen!');
              },
              child: Text('Ans3'),
            ),
          ],
        ),
      ),
    );
  }
}
