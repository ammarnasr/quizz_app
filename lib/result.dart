import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function restartFunction;

  Result(this.finalScore, this.restartFunction);

  String get resultCatigory {
    var resultComent = 'Your Tatse is \n ';
    if (finalScore < 20) {
      resultComent += 'Very bad';
    } else if (finalScore < 40) {
      resultComent += 'Bad';
    } else if (finalScore < 60) {
      resultComent += 'Avarage';
    } else if (finalScore < 80) {
      resultComent += 'Good';
    } else if (finalScore < 100) {
      resultComent += 'Very Good';
    } else {
      resultComent += 'Super!';
    }
    return resultComent;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultCatigory + '\nScore : $finalScore',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: restartFunction,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
