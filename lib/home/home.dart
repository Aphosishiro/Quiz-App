import 'package:flutter/material.dart';
import 'package:simple_quiz_app/home/sportquiz.dart';
import 'package:simple_quiz_app/home/techquiz.dart';
import 'package:simple_quiz_app/shared/constant.dart';

//try creating a sport quiz

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildChoiceBubble(Color color, String text) {
      return Container(
        width: double.infinity,
        height: size.height * 0.2,
        color: color,
        child: Center(
          child: Text(
            text,
            style: questionStyle,
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SportQuiz()));
                  },
                  child: buildChoiceBubble(Colors.green, "Sport Quiz")),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const TechQuiz()));
                  },
                  child: buildChoiceBubble(Colors.blue, "Tech Quiz"))
            ],
          ),
        ));
  }
}
