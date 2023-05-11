import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      ),
      child: Text(answerText,
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )
          ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
