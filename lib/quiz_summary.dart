import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({required this.summaryData, Key? key}) : super(key: key);
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: summaryData.map((data){
              return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor : data['userAnswer'] != data['correctAnswer'] ? Colors.redAccent: Colors.teal,
                          child: FittedBox(
                            child: Text(
                                  ((data['questionIndex'] as int) + 1).toString(),
                                style: GoogleFonts.ubuntu(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ),

                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data['question'] as String,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: const TextStyle(
                                        fontSize: 16.5,
                                        //color: Colors.brown,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  //textAlign: TextAlign.right,
                                ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['userAnswer'] as String,
                                style: data['userAnswer'] != data['correctAnswer'] ? GoogleFonts.genos(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.w600
                                  ),
                                ): GoogleFonts.genos(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                //textAlign: TextAlign.left,
                              ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['correctAnswer'] as String,
                                style: GoogleFonts.genos(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                //textAlign: TextAlign.left,
                              ),

                          ],
                          ),
                        ),
                      )
                    ],
                ),
              );
            }).toList(),
        ),
      ),
    );
  }
}

