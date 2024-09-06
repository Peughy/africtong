import 'package:flutter/material.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/authentification/views/login/footer_login_view.dart';
import 'package:africtong/src/features/authentification/views/login/header_login_view.dart';
import 'package:africtong/src/features/authentification/views/login/login_form_view.dart';

class LoginViews extends StatelessWidget {
  const LoginViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(pad),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const HeaderLoginView(),
                LoginFormView(),
                const FooterLoginView(),
              ])),
        ));
  }
}
