import 'package:flutter/material.dart';
import 'package:simple_quiz_app/models/questions.dart';
import '../shared/constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Icon> scoreKeeper = [];

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

  int questionNumbers = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildQuestionBox() {
      return Expanded(
        child: Center(
          child: Text(
            questionBank[questionNumbers].questionText,
            textAlign: TextAlign.center,
            style: questionStyle,
          ),
        ),
      );
    }

    buildAnswerButton(Color color, String button, dynamic onPressed) {
      return SizedBox(
        height: size.height * 0.08,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: onPressed,
          child: Text(
            button,
            style: buttonStyle,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildQuestionBox(),
            buildAnswerButton(Colors.green, "True", () {
              bool correctanswers =
                  questionBank[questionNumbers].questionAnswer;
              if (correctanswers == true) {
                scoreKeeper.add(const Icon(
                  Icons.check,
                  color: Colors.green,
                ));
              } else {
                scoreKeeper.add(const Icon(
                  Icons.close,
                  color: Colors.red,
                ));
              }
              setState(() {
                questionNumbers++;
              });
            }),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildAnswerButton(Colors.red, "False", () {
              bool correctanswers =
                  questionBank[questionNumbers].questionAnswer;
              if (correctanswers == false) {
                scoreKeeper.add(const Icon(
                  Icons.check,
                  color: Colors.green,
                ));
              } else {
                scoreKeeper.add(const Icon(
                  Icons.close,
                  color: Colors.red,
                ));
              }
              setState(() {
                questionNumbers++;
              });
            }),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(children: scoreKeeper),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
