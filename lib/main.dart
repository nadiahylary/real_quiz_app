import 'package:flutter/material.dart';

void main() {
  runApp(const RealQuiz());
}

class RealQuiz extends StatelessWidget {
  const RealQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real Quiz App",
      home: Scaffold(
          backgroundColor: Colors.brown,
          body: Center(
            //margin: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 300,
                ),
                const SizedBox(
                  height: 40,
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
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent),
                      fixedSize:
                          const MaterialStatePropertyAll(Size.fromWidth(140.0)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Start Quiz',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          )),
    );
  }
}

/*class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ;
  }
}*/
