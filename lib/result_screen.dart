import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/questions-data.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({required this.totalScore, required this.selectedAnswers, required this.quizRestart, Key? key}) : super(key: key);
  final int totalScore;
  final List<String> selectedAnswers;
  final void Function() quizRestart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Center(
            child: Container(
              height: 500,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                      "You had $totalScore answers out of ${selectedAnswers.length} correct.",
                      style: GoogleFonts.changa(
                        textStyle: const TextStyle(
                            fontSize: 22,
                            color: Colors.teal,
                            fontWeight: FontWeight.w600
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  OutlinedButton.icon(
                    onPressed: quizRestart,
                    icon: const Icon(
                      Icons.restart_alt_sharp,
                      color: Colors.black,
                      size: 35,
                    ),
                    label: Text('ReStart Quiz',
                        style: GoogleFonts.changa(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              color: Colors.redAccent,
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
