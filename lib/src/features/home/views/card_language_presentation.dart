import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardLanguagePpresentation extends StatelessWidget {
  const CardLanguagePpresentation({super.key, required this.language});

  final String language;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: chooseLangOn,
      margin: const EdgeInsets.symmetric(horizontal: pad),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderBottomNavigationRadius),
          side: const BorderSide(width: 2, color: primaryColor)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(pad),
            child: Text(
              language,
              style: GoogleFonts.openSans(
                  fontSize: mediumSize, color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
