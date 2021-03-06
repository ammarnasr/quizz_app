import 'package:flutter/material.dart';
import './answer.dart';
import './qustioin.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questionList,
      @required this.questionIndex,
      @required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionList[questionIndex]['Q'],
        ),
        ...(questionList[questionIndex]['A'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'],
          );
        }).toList()
      ],
    );
  }
}
