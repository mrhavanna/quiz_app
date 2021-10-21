import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  final qa = const [
    {
      'questionText': 'Was ist deine Lieblingsfarbe?',
      'answers': ['Rot', 'Blau', 'Schwarz', 'Grün'],
    },
    {
      'questionText': 'Was ist dein Lieblingsessen?',
      'answers': [
        'Cordon Bleu',
        'Thai Chicken Satay',
        'Manchurian Chicken',
        'Rosenkohl',
        'Kichererbsen Curry',
        'Spaghetti Carbonara'
      ],
    },
    {
      'questionText': 'Was ist dein Lieblingstier?',
      'answers': ['Hase', 'Schlange', 'Elefant', 'Löwe'],
    },
    {
      'questionText': 'Wie heisst dein Lieblingsfilm',
      'answers': [
        'Ready Player 1',
        'Matrix',
        'Minority Report',
        'Al Capone',
        'König der Löwen'
      ],
    },
    {
      'questionText': 'Wie heisst dein Lieblings Urlaubsland',
      'answers': [
        'Italien',
        'Panama',
        'Griechenladn',
        'Usbekistan',
        'Österreich'
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  int _questionIndex = 0;

  @override
  build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Meine App')),
        ),
        body: _questionIndex < qa.length
            ? Quiz(
                questions: qa,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : const Center(
                child: Text('Du hast es geschafft'),
              ),
      ),
    ));
  }
}
