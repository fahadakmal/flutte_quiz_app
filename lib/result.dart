import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore,this.resetQuiz);

  String get resultphrase {
    var resultText = 'you are perfect';
    if (totalScore <= 10) {
      resultText = 'you failed ';
    } else if (totalScore <= 80) {
      resultText = 'you are average';
    }
    else if (totalScore <= 100) {
      resultText = 'you are best';
    }
    else if (totalScore <= 200) {
      resultText = 'you are excellent';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child:
              Text('Restart Quiz'),
              textColor:Colors.red,
              onPressed:resetQuiz),


        ],
      ),

    );
  }
}
