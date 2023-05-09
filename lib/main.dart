import 'package:flutter/material.dart';
import 'package:real_quiz_app/quiz.dart';

void main() {
  runApp(const RealQuiz());
}

class RealQuiz extends StatelessWidget {
  const RealQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}


