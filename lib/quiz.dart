import 'package:flutter/material.dart';
import './answer.dart';
import './qustioin.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Objects>> questionList;
  final double questionIndex;
  final Function answerQuestion;
  Quiz({@required this.question, @required this.questionIndex, @required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column (
      childern: [
        Qusetion(questionList[qusetionIndex]['Q']),

        ...(questionList[questionIndex][A] as List<String> ).map((answer){
          Answer(answerQuestion, answer);
        }).toList()
      ],
    )
  }
}
