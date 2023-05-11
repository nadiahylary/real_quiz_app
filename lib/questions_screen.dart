import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_quiz_app/data/questions-data.dart';
import 'package:flutter/material.dart';
import 'package:real_quiz_app/answer.dart';
import 'package:real_quiz_app/quiz.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectAnswer, Key? key}) : super(key: key);
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var questionIndex = 0;
  void _quiz(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*SizedBox(
    width: double.infinity,
    child: Column(...));*/
    return SizedBox(
      width: double.infinity,
       child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                    questions[questionIndex].question,
                    style: GoogleFonts.changa(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                ...(questions[questionIndex].getShuffledAnswers()).map((answer) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AnswerWidget(answerText: answer, onTap:() {
                        _quiz(answer);
                      }
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  );
                }).toList(),
              ],
            )
          )
       )
    );
  }
}
