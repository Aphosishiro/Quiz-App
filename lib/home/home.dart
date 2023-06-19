import 'package:flutter/material.dart';
import 'package:simple_quiz_app/models/quizbrain.dart';
import '../shared/constant.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Icon> scoreKeeper = [];

  int questionNumbers = 0;

  Quizbrain quizbrain = Quizbrain();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildQuestionBox() {
      return Expanded(
        child: Center(
          child: Text(
            quizbrain.questionBank[questionNumbers].questionText,
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
                  quizbrain.questionBank[questionNumbers].questionAnswer;
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
                  quizbrain.questionBank[questionNumbers].questionAnswer;
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
