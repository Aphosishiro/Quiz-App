import 'package:flutter/material.dart';
import 'package:simple_quiz_app/models/quizbrain.dart';
import 'package:simple_quiz_app/shared/constant.dart';

class SportQuiz extends StatefulWidget {
  const SportQuiz({super.key});

  @override
  State<SportQuiz> createState() => _SportQuizState();
}

class _SportQuizState extends State<SportQuiz> {
  List<Icon> scoreKeeper = [];

  Quizbrain quizbrain = Quizbrain();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void getCorrectAnswer(bool quizAnswer) {
      return setState(() {
        bool correctanswers = quizbrain.getSportQuizAnswer();
        if (correctanswers == quizAnswer) {
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

        quizbrain.nextQuestion(context);
      });
    }

    buildQuestionBox() {
      return Expanded(
        child: Center(
          child: Text(
            quizbrain.getSportQuizText(),
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
      appBar: AppBar(
        title: const Text("QUIZ"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildQuestionBox(),
            buildAnswerButton(Colors.green, "True", () {
              getCorrectAnswer(true);
            }),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildAnswerButton(Colors.red, "False", () {
              getCorrectAnswer(false);
            }),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: scoreKeeper),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
