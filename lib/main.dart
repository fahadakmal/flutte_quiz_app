import 'package:flutter/material.dart';


import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore=0;
  final _questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [{'text':'Black','score':10}, {'text':'Blue','score':5}, {'text':'Green','score':20}, {'text':'Red','score':8}]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [{'text':'Donkey','score':10}, {'text':'Dog','score':20}, {'text':'Cat','score':40}, {'text':'Tiger','score':80}]
    },
    {
      'questionText': 'What is your favourite fruit?',
      'answers': [{'text':'Orange','score':30}, {'text':'Banana','score':20}, {'text':'Grapes','score':90}, {'text':'Apple','score':40}]
    },
  ];



  void _answerQuestion(int score) {

    setState(() {
      _questionIndex++;

      _totalScore += score;
    });

    print(_totalScore);
  }

  void _resetQuiz()
  {
    setState(() {
      _questionIndex =0;
      _totalScore =0;
    });


  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? Quiz(questions:_questions,answerQuestion:_answerQuestion,questionIndex:_questionIndex) : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
