import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/controllers/home_page_controller.dart';
import 'package:africtong/src/features/home/views/card_language_presentation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguaguePresentation extends StatelessWidget {
  const LanguaguePresentation({
    super.key,
    required this.homePageController,
  });

  final HomePageController homePageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: pad),
          child: Align(
            alignment: Alignment.centerLeft,

            // language presentation text
            child: Text(
              langLearn,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: largeSize,
                  letterSpacing: letterSpacing,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: hSpacing,
        ),

        // Langues presentation
        CardLanguagePpresentation(language: homePageController.medumbaLang),
        const SizedBox(height: hSpacing),
        CardLanguagePpresentation(language: homePageController.ewondoLang),
        const SizedBox(height: hSpacing),
      ],
    );
  }
}
