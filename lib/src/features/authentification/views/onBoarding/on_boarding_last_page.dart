import 'package:africtong/src/commons/navigator_page.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/authentification/views/login/login_views.dart';
import 'package:africtong/src/features/authentification/views/signup/signup_views.dart';
import 'package:africtong/src/features/choose_language/views/choose_language_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingLastPage extends StatelessWidget {
  const OnBoardingLastPage({super.key});

  @override
  Widget build(BuildContext context) {
    NavigatorPage navigatorPage = NavigatorPage();

    return Container(
        color: secondaryColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              onBoardingImage4,
              height: 300,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(onBoardingLargeText4,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 46,
                    height: 1,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: padVertical)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupViews()));
                      },
                      child: Text("INSCRIPTION",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5,
                              color: Colors.white)))),
              const SizedBox(height: hSpacing),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          padding:
                              const EdgeInsets.symmetric(vertical: padVertical),
                          side: const BorderSide(
                              color: Colors.black, width: borderWidth)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginViews()));
                      },
                      child: Text("CONNEXION",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5,
                              color: Colors.black)))),
              const SizedBox(height: hSpacing),
              TextButton(
                  onPressed: () => navigatorPage.changePage(
                      context, const ChooseLanguageView()),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Continuer sans compte ",
                            style: GoogleFonts.openSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.5,
                                color: Colors.black)),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.black,
                        )
                      ]))
            ]),
            const SizedBox(height: 30),
          ]),
        ));
  }
}

class TextAlignment {}
