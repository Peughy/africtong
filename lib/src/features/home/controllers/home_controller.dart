import 'package:flutter/material.dart';

class HomeController {
  final iconList = <IconData>[
    Icons.book,
    Icons.speaker,
    Icons.extension,
    Icons.quiz,
  ];

  final labels = <String>["Cours", "Song", "Exercices", "Quizz"];
  var bottomNavIndex = -1;
}
