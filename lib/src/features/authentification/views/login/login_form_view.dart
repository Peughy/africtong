import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/authentification/controllers/login/login_controller.dart';

// ignore: must_be_immutable
class LoginFormView extends StatelessWidget {
  LoginFormView({
    super.key,
  });

  LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginController.loginFormKey,
      child: Column(
        children: [
          const SizedBox(height: hSpacing),
          TextFormField(
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              prefixIcon: const Icon(Icons.person_outline_outlined),
              labelText: tEmail,
              hintText: tEmailPlaceholder,
              hintStyle: GoogleFonts.openSans(fontSize: 18),
              labelStyle: GoogleFonts.openSans(fontSize: 18),
              border: const OutlineInputBorder(),
            ),
            validator: (value) => loginController.validateEmail(value),
          ),
          const SizedBox(height: hSpacing),
          TextFormField(
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              prefixIcon: const Icon(Icons.fingerprint),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp)),
              labelText: tMdp,
              hintText: tMdpPlaceholder,
              hintStyle: GoogleFonts.openSans(fontSize: 18),
              labelStyle: GoogleFonts.openSans(fontSize: 18),
              border: const OutlineInputBorder(),
            ),
            validator: (value) => loginController.validateMdp(value),
          ),
          const SizedBox(height: hSpacing),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(tMdpOublie,
                      style: GoogleFonts.openSans(color: Colors.blue)))),
          const SizedBox(height: hSpacing),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                final key = loginController.loginFormKey;
                loginController.sendLoginForm(key, context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: padVertical)),
              child: Text("CONNEXION",
                  style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.5,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
