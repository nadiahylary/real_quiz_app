import 'dart:math';
import 'package:real_quiz_app/data/questions-data.dart';
import 'package:flutter/material.dart';
import 'package:real_quiz_app/answer.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var questionIndex = 0;
  void _quiz(){
    //int rand = Random().nextInt(questions.length);
    setState(() {
      questionIndex++;
    });
  }
  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
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
        child: questionIndex < questions.length ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                  questions[questionIndex].question,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ...(questions[questionIndex].answers).map((answer) {
              return Column(
                children: [
                  AnswerWidget(answerText: answer, onTap: _quiz),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              );
            }).toList(),
          ],
        )
        : ElevatedButton(
          onPressed: _resetQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            ),
          child: const Text(
            "Your Results are Good!\n Restart Quiz",
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ),
      )
    );
  }
}
