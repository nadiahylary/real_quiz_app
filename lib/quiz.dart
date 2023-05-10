import 'package:flutter/material.dart';
import 'package:real_quiz_app/questions_screen.dart';
import 'package:real_quiz_app/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //Widget? currentScreen;

  String currentScreen = "start-screen";

  /*@override
  void initState() {
    // TODO: implement initState
    currentScreen = StartScreen(_switchScreen);
    super.initState();
  }*/

  void _switchScreen() {
    setState(() {
      //currentScreen = const QuestionsScreen();
      currentScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(_switchScreen);
    if(currentScreen == 'questions-screen'){
      activeScreen = QuestionsScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real Quiz App",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(240, 240, 240, 240),
        body: currentScreen == "start-screen"
            ? StartScreen(_switchScreen)
            : const QuestionsScreen(),
      ),
    );
  }
}
