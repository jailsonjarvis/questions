import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class QuestionsApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Questions'),
      ),
      body: Text('teste'),
    ),
    );
  }
}
