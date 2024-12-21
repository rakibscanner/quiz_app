import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/question_data.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> userAnswers = [];

  var activePage = "start_screen";

  void play() {
    setState(() {
      activePage = "Questions";
    });
  }

  void onSelect(String answer) {
    userAnswers.add(answer);
    if (userAnswers.length == questions.length) {
      setState(() {
        activePage = 'result_screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      userAnswers = [];
      activePage = 'Questions';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(play);

    if (activePage == 'Questions') {
      screenWidget = Questions(onSelect: onSelect);
    }
    if (activePage == 'result_screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: userAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 166, 246, 255),
          backgroundColor: const Color.fromARGB(255, 5, 4, 56),
          title: Text(
            "QUIZ",
            style: GoogleFonts.cambo(
              // color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 190, 255, 247),
                Color.fromARGB(255, 2, 121, 253),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
