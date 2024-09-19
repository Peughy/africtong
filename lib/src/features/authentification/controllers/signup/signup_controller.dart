import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/services/SignupServices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupController {
  // set de input controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final mdpController = TextEditingController();

  String selectedLang = "chooseLang";

  // items dropdown
  List<DropdownMenuItem> items = [
    DropdownMenuItem(
        value: 'chooseLang',
        child: Text("Choisir une langue d'apprentissage",
            style: GoogleFonts.openSans(fontSize: textSize))),
    DropdownMenuItem(
        value: 'medumba',
        child: Text(mLLang, style: GoogleFonts.openSans(fontSize: textSize))),
    DropdownMenuItem(
        value: 'ewondo',
        child: Text(eLLang, style: GoogleFonts.openSans(fontSize: textSize))),
  ];

  void registerUserWithEmailMdp(
      String username, String email, String mdp, String langue) {
    SignupServices().signWinthEmailAndMdp(username, email, mdp, langue);
  }

  void registerUserWidthGoogle() {
    SignupServices().signInWithGoogle();
  }
}
