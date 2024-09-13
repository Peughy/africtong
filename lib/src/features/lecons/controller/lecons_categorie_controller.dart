import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/features/lecons/models/lecons_categorie_model.dart';
import 'package:flutter/material.dart';

class LeconsCategorieController {
  List<LeconsCategorieModel> categories = const [
    LeconsCategorieModel(
        cathegorie: "Grammaire",
        subContainer: primaryColor,
        mainContainer: chooseLangOn,
        textColor: primaryColor),
    LeconsCategorieModel(
        cathegorie: "Orthographe",
        subContainer: Colors.black,
        mainContainer: secondaryColor,
        textColor: Colors.black),
    LeconsCategorieModel(
        cathegorie: "Conjugaision",
        subContainer: primaryColor,
        mainContainer: chooseLangOff,
        textColor: primaryColor),
  ];
}
