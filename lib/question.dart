import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // Konstruktor der Klasse Question
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    );
  }
}
