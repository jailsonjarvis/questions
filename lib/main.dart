import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class QuestionsApp extends StatefulWidget {
  QuestionAppState createState() {
    return QuestionAppState();
  }
}

class QuestionAppState extends State<QuestionsApp> {
  var questionSelected = 0;
  void reply() {
    setState(() {
      questionSelected++;
    });
  }

  @override
  Widget build(BuildContext contex) {
    final questions = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionSelected]),
            RaisedButton(
              child: Text('Respopsta 1'),
              onPressed: reply,
            ),
            RaisedButton(
              child: Text('Respopsta 2'),
              onPressed: reply,
            ),
            RaisedButton(
              child: Text('Respopsta 3'),
              onPressed: reply,
            )
          ],
        ),
      ),
    );
  }
}
