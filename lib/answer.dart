import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(this.answerText, {Key? key}) : super(key: key);
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.redAccent),
      ),
      child: Text(answerText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          )
      ),
    );
  }
}
