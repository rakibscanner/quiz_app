import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/question_data.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/decoration/colours.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.onSelect});

  final void Function(String answertext) onSelect;

  @override
  State<Questions> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<Questions> {
  var questionIndex = 0;

  void onPressed(String answertext) {
    widget.onSelect(answertext);

    setState(() {
      questionIndex++;
    });
  }


  @override
  Widget build(context) {
    final currentQuestion =questions[questionIndex];
    return (SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                (currentQuestion.question),
                style: GoogleFonts.lato(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ...currentQuestion
                  .getshuffled()
                  .map((e) => AnswerButton(onTap: (){onPressed(e);}, answerText: e)),
            ]),
      ),
    ));
  }
}
