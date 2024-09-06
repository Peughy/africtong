import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/authentification/views/login/login_views.dart';

class FooterSignupView extends StatelessWidget {
  const FooterSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text("OU",
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black)),
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                padding: const EdgeInsets.symmetric(vertical: padVertical),
                side:
                    const BorderSide(color: Colors.black, width: borderWidth)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage(googleLogo), height: 25),
                const SizedBox(width: 5),
                Text(gSign.toUpperCase(),
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          ),
        ),
        const SizedBox(height: hSpacing),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginViews()));
          },
          child: Text.rich(TextSpan(
              text: tCompte,
              style: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                  text: " Connexion",
                  style: GoogleFonts.openSans(fontSize: 18, color: Colors.blue),
                )
              ])),
        ),
        const SizedBox(height: hSpacing),
      ],
    );
  }
}
