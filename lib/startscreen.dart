import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      //margin: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
              "assets/images/quiz-logo.png",
              width: 350,
              color: const Color.fromARGB(90, 255, 255, 255),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Learn Flutter th fun way!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              Icons.start_sharp,
              color: Colors.white,
              size: 35,
            ),
            label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 20, color: Colors.redAccent),
              ),
          )
        ],
      ),
    );
  }
}