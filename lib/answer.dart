import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({required this.answerText, required this.onTap, Key? key}) : super(key: key);
  final String answerText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      child: Text(answerText,
          style: const TextStyle(
            fontSize: 17,
            //fontWeight: FontWeight.w500,
            color: Colors.white,
          )
      ),
    );
  }
}
