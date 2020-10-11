import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
