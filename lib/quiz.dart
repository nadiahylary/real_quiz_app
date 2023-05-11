import 'package:flutter/material.dart';
import 'package:real_quiz_app/data/questions-data.dart';
import 'package:real_quiz_app/questions_screen.dart';
import 'package:real_quiz_app/result_screen.dart';
import 'package:real_quiz_app/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  String currentScreen = "start-screen";
  int totalScore = 0;
  //Widget? currentScreen;

  void _answersChosen(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      _calcResults();
      setState(() {
        //selectedAnswers.clear();
        currentScreen = "result-screen";
      });
    }
  }


  void _calcResults(){
    for(int i = 0; i<selectedAnswers.length; i++){
      if(selectedAnswers[i] == questions[i].answers[0]){
        totalScore ++;
      }
    }
  }
  void _resetQuiz(){
    setState(() {
      selectedAnswers.clear();
      totalScore = 0;
      currentScreen = 'questions-screen';
    });
  }
  /*@override
  void initState() {
    // TODO: implement initState
    currentScreen = StartScreen(_switchScreen);
    super.initState();
  }*/

  void _switchScreen() {
    setState(() {
      currentScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(_switchScreen);
    if(currentScreen == 'questions-screen'){
      activeScreen = QuestionsScreen(onSelectAnswer: _answersChosen);
    }
    else if(currentScreen == 'result-screen'){
      activeScreen = ResultWidget(totalScore: totalScore, selectedAnswers: selectedAnswers, quizRestart: _resetQuiz);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real Quiz App",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(240, 240, 240, 240),
        body: activeScreen,
      ),
    );
  }
}
