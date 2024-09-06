import 'package:flutter/material.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/authentification/views/signup/footer_signup_view.dart';
import 'package:africtong/src/features/authentification/views/signup/header_signup_view.dart';
import 'package:africtong/src/features/authentification/views/signup/signup_form_view.dart';

class SignupViews extends StatelessWidget {
  const SignupViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(pad),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const HeaderSignupView(),
                SignupFormView(),
                const FooterSignupView(),
              ])),
        ));
  }
}