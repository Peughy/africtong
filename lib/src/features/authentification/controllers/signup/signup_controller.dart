import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/constants/strings.dart';

class SignupController {
  final signupFormKey = GlobalKey<FormState>();

  String validateEmail(value) {
    if (value == null || value.isEmpty) {
      return emptyField;
    }
    return "";
  }

  String validateUsernameMdp(value) {
    if (value == null || value.isEmpty) {
      return emptyField;
    }
    return "";
  }

  void sendSignupForm(GlobalKey<FormState> key, BuildContext context) {
    if (key.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        "Connexion en cours...",
        style: GoogleFonts.openSans(color: Colors.white, fontSize: 18),
      )));
    }
  }
}
