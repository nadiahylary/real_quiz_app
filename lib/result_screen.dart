import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/questions-data.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(
      {required this.totalScore, required this.selectedAnswers, required this.quizRestart, Key? key})
      : super(key: key);
  final int totalScore;
  final List<String> selectedAnswers;
  final void Function() quizRestart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Center(
            child: Container(
              height: 600,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "You had $totalScore answers out of ${selectedAnswers
                        .length} correct.",
                    style: GoogleFonts.changa(
                      textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.teal,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text("List of questions and answers.",
                    style: GoogleFonts.genos(
                      textStyle: const TextStyle(
                          fontSize: 22,
                          //color: Colors.brown,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  /*ListView.builder(
                      itemBuilder: (context, index){
                        return SizedBox(
                            //height: 300,
                            child: Text(
                              selectedAnswers[index],
                              style: GoogleFonts.genos(
                                textStyle: const TextStyle(
                                    fontSize: 22,
                                    //color: Colors.brown,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              textAlign: TextAlign.center,
                            )
                        );
                      }
                  ),*/
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
