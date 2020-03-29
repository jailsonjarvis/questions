import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';
import 'package:projeto_perguntas/question.dart';

main() => runApp(QuestionsApp());

class QuestionsApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}

class _QuestionAppState extends State<QuestionsApp> {
  var _questionSelected = 0;
  void _reply() {
    setState(() {
      _questionSelected++;
    });
  }

  @override
  Widget build(BuildContext contex) {
    final questions = [
      {
        'text': 'Qual a sua cor favorita?',
        'answres': ['Azul', 'Amarelo', 'Verde', 'Vermelho']
      },
      {
        'text': 'Qual o seu animal favorito?',
        'answres': ['Cachorro', 'Gato', 'Tartaruga', 'Coelho']
      }
    ];

    List<String> answares = questions[_questionSelected]['answres'];

  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionSelected]['text']),
            ...answares.map((ans) => Answer(ans, _reply)).toList()
          ],
        ),
      ),
    );
  }
}
