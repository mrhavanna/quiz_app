import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// Shortcuts:
// stlss creates a stateless widget
// stful creates a statefull widget

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // Konstruktor mit named parameter
  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Question(
            questions[questionIndex]['questionText'].toString(),
          ),
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
