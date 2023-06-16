import 'package:flutter/material.dart';
import '../shared/constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Icon> scoreKeeper = [];

  List<String> questions = [
    "Flutter is a framework used by mobile developers?",
    "HTML is the acronym for HyperText Markup Language?",
    "Figma is a programming language?",
    "Git is a version control system?",
    "List is to Dart, while Array is to JavaScript?",
    "CSS stands for Cascading Spline sheet?",
    "Strings in programming lanugauges are used to strore numbers?",
    "ISP stands for Internet Service Provision?",
    "Netlify is an example of a free hosting platform?",
    "DNS is an acronym for Domain Name System?",
  ];

  int questionNumbers = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildQuestionBox() {
      return Expanded(
        child: Center(
          child: Text(
            questions[questionNumbers],
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
              setState(() {
                questionNumbers++;
              });
            }),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildAnswerButton(Colors.red, "False", () {
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
