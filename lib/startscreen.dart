import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      //margin: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 350,
            color: const Color.fromARGB(130, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Learn Flutter the fun way!",
              style: GoogleFonts.blackOpsOne(
                textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(
              Icons.start_sharp,
              color: Colors.black,
              size: 35,
            ),
            label: Text('Start Quiz',
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
    );
  }
}
