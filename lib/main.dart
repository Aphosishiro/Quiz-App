import 'package:flutter/material.dart';
import 'package:simple_quiz_app/home/home.dart';

void main(List<String> args) {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Home(),
    );
  }
}