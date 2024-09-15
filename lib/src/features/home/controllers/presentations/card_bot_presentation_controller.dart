import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/models/presentations/card_bot_presentation_model.dart';
import 'package:flutter/material.dart';

class CardBotPresentationController {
  List<CardBotPresentationModel> botPresentation = const [
    CardBotPresentationModel(
        image: botAssistLight,
        text: welcomeBot1,
        color: primaryColor,
        textColor: Colors.white),
    CardBotPresentationModel(
        image: botLove,
        text: welcomeBot2,
        color: secondaryColor,
        textColor: Colors.black),
    CardBotPresentationModel(
        image: botAnalyseBlue,
        text: welcomeBot3,
        color: Colors.white,
        textColor: primaryColor),
  ];
}
