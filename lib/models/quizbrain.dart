import 'package:simple_quiz_app/models/questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Quizbrain {
  int _questionNumber = 0;
  
  _onBasicAlertPressed(context) {
  Alert(
    context: context,
    title: "RFLUTTER ALERT",
    desc: "Flutter is more awesome with RFlutter Alert.",
  ).show();
}

  void nextQuestion() {
    if (_questionNumber < _sportquiz.length - 1 ||
        _questionNumber < _techquiz.length - 1) {
      _questionNumber++;
    } else {
     
    }
  }

  final List<Question> _techquiz = [
    Question(
        question: "Flutter is a framework used by mobile developers?",
        answer: true,),
    Question(
        question: "HTML is the acronym for HyperText Markup Language?",
        answer: true),
    Question(question: "Figma is a programming language?", answer: false),
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

//created a getquestion and answer method
  getTechQuestionText() {
    return _techquiz[_questionNumber].question;
  }

  getTechQuestionAnswer() {
    return _techquiz[_questionNumber].answer;
  }

  // void nextTechQuestion() {
  //   if (_questionNumber < _techquiz.length - 1) {
  //     _questionNumber++;
  //   }
  // }

  final List<Question> _sportquiz = [
    Question(question: "Cristaino Ronaldo wears the No 7?", answer: true),
    Question(
        question: "Nigeria did not qualify for the 2022 world cup?",
        answer: true),
    Question(
      question: "Lebron James of the lakers is reffered to as the prince?",
      answer: false,
    ),
    Question(
        question:
            "The volley baller are allowed to hit the ball with their legs?",
        answer: true),
    Question(
        question: "Freethrow is to basketball, while penalty is to football?",
        answer: true),
    Question(question: "The MMA is a fight to the death?", answer: false),
    Question(question: "F1 is an acronym for Forumalate one?", answer: false),
    Question(
        question: "Sport betting is illegal in all countries?", answer: false),
    Question(
        question:
            "Mikel Obi once won the silver boot in a competition next to Lionel Messi who won the golden boot?",
        answer: true),
    Question(
        question: "The premier leauge is England's most popular tournament?",
        answer: true),
  ];

  getSportQuizText() {
    return _sportquiz[_questionNumber].question;
  }

  getSportQuizAnswer() {
    return _sportquiz[_questionNumber].answer;
  }

  // void nextSportQuestion() {
  //   if (_questionNumber < _sportquiz.length - 1) {
  //     _questionNumber++;
  //   }
  // }
}