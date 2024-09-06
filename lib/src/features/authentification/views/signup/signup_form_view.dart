import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/authentification/controllers/signup/signup_controller.dart';

// ignore: must_be_immutable
class SignupFormView extends StatelessWidget {
  SignupFormView({
    super.key,
  });

  SignupController signupController = SignupController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupController.signupFormKey,
      child: Column(
        children: [
          const SizedBox(height: hSpacing),
          TextFormField(
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person_outline_outlined),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText: tUsername,
              hintText: tUsernamePlaceholder,
              hintStyle: GoogleFonts.openSans(fontSize: 18),
              labelStyle: GoogleFonts.openSans(fontSize: 18),
              border: const OutlineInputBorder(),
            ),
            validator: (value) => signupController.validateUsernameMdp(value),
          ),
          const SizedBox(height: hSpacing),
          TextFormField(
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              prefixIcon: const Icon(Icons.email_outlined),
              labelText: tEmail,
              hintText: tEmailPlaceholder,
              hintStyle: GoogleFonts.openSans(fontSize: 18),
              labelStyle: GoogleFonts.openSans(fontSize: 18),
              border: const OutlineInputBorder(),
            ),
            validator: (value) => signupController.validateEmail(value),
          ),
          const SizedBox(height: hSpacing),
          TextFormField(
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
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
            validator: (value) => signupController.validateUsernameMdp(value),
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
                final key = signupController.signupFormKey;
                signupController.sendSignupForm(key, context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: padVertical)),
              child: Text("INSCRIPTION",
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
