import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeController {
  final iconList = <IconData>[
    FontAwesomeIcons.bookBookmark,
    FontAwesomeIcons.headphonesSimple,
    FontAwesomeIcons.puzzlePiece,
    Icons.quiz_rounded,
  ];

  final labels = <String>["Cours", "Accents", "Exercices", "Quizz"];
  var bottomNavIndex = -1;
}
