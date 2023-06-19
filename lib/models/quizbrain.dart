import 'package:simple_quiz_app/models/questions.dart';

class Quizbrain {
  List<Question> questionBank = [
    Question(
        question: "Flutter is a framework used by mobile developers?",
        answer: true),
    Question(
        question: "HTML is the acronym for HyperText Markup Language?",
        answer: true),
    Question(
      question: "Figma is a programming language?",
      answer: false,
    ),
    Question(question: "Git is a version control system?", answer: true),
    Question(
        question: "List is to Dart, while Array is to JavaScript?",
        answer: true),
    Question(question: "CSS stands for Cascading Spline sheet?", answer: false),
    Question(
        question:
            "Strings in programming lanugauges are used to strore numbers?",
        answer: false),
    Question(
        question: "ISP stands for Internet Service Provision?", answer: false),
    Question(
        question: "Netlify is an example of a free hosting platform?",
        answer: true),
    Question(
        question: "DNS is an acronym for Domain Name System?", answer: true),
  ];
}