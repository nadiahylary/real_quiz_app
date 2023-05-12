import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_quiz_app/quiz_summary.dart';

import 'data/questions-data.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    required this.totalScore,
    required this.selectedAnswers,
    required this.quizRestart, Key? key}) : super(key: key);

  final int totalScore;
  final List<String> selectedAnswers;
  final void Function() quizRestart;

  List<Map<String, Object>> getQuizSummary(){
    final List<Map<String, Object>> summary = [];
    for (var i =0; i < selectedAnswers.length; i++){
      summary.add({
        'questionIndex': i,
        'question': questions[i].question,
        'userAnswer': selectedAnswers[i],
        'correctAnswer': questions[i].answers[0],
      });
    }
    return summary;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Center(
            child: Container(
              //height: 600,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  Text("Quiz Completed!",
                    style: GoogleFonts.changa(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.brown,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "You answered $totalScore answer(s) out of ${selectedAnswers
                        .length} correct.",
                    style: GoogleFonts.ubuntu(
                      textStyle: const TextStyle(
                          fontSize: 19,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  QuizSummary(summaryData: getQuizSummary()),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton.icon(
                    onPressed: quizRestart,
                    icon: const Icon(
                      Icons.restart_alt_sharp,
                      color: Colors.black,
                      size: 40,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                    label: Text('ReStart Quiz',
                        style: GoogleFonts.changa(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),
                        )
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
