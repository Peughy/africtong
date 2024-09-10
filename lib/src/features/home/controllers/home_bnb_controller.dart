import 'package:flutter/material.dart';

class HomeBnbController {

  final iconList = <IconData>[
    Icons.book,
    Icons.extension,
    Icons.translate,
    Icons.quiz,
  ];
  
  final labels = <String>["Cours", "Exercices", "Traduction", "Quizz"];
  var bottomNavIndex = 0;

}