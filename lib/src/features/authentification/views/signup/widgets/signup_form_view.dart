import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/authentification/controllers/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SignupFormView extends StatelessWidget {
  const SignupFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignupController signupController = SignupController();
    final signupFormKey = GlobalKey<FormState>();

    return Form(
      key: signupFormKey,
      child: Column(
        children: [
          const SizedBox(height: hSpacing),
          TextFormField(
            controller: signupController.usernameController,
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: const Icon(FontAwesomeIcons.userLarge),
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return emptyField;
              }
              return null;
            },
          ),
          const SizedBox(height: hSpacing),
          TextFormField(
            controller: signupController.emailController,
            keyboardType: TextInputType.emailAddress,
            style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              prefixIcon: const Icon(FontAwesomeIcons.solidEnvelope),
              labelText: tEmail,
              hintText: tEmailPlaceholder,
              hintStyle: GoogleFonts.openSans(fontSize: 18),
              labelStyle: GoogleFonts.openSans(fontSize: 18),
              border: const OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return emptyField;
              }
              return null;
            },
          ),
          const SizedBox(height: hSpacing),
          TextFormField(
              controller: signupController.mdpController,
              style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                prefixIcon: const Icon(FontAwesomeIcons.fingerprint),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.solidEye)),
                labelText: tMdp,
                hintText: tMdpPlaceholder,
                hintStyle: GoogleFonts.openSans(fontSize: 18),
                labelStyle: GoogleFonts.openSans(fontSize: 18),
                border: const OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return emptyField;
                }
                if (value.length < 6) {
                  return tMdpError;
                }
                return null;
              }),
          const SizedBox(height: hSpacing),
          DropdownButtonFormField(
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
              ),
              items: signupController.items,
              value: signupController.selectedLang,
              onChanged: (value) {
                signupController.selectedLang = value!;
              }),
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
                FocusScope.of(context).requestFocus(FocusNode());
                if (signupFormKey.currentState!.validate()) {
                  String username =
                      signupController.usernameController.text.trim();
                  String email = signupController.emailController.text.trim();
                  String mdp = signupController.mdpController.text.trim();
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        );
                      });
                  signupController.registerUserWithEmailMdp(
                      username, email, mdp, signupController.selectedLang);
                  Navigator.of(context).pop();
                }
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
