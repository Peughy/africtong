import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeconsSelectionView extends StatelessWidget {
  const LeconsSelectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: pad),
        child: Card(
          color: chooseLangOn,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(borderBottomNavigationRadius),
              side: const BorderSide(width: 1, color: primaryColor)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              mLLang,
              style: GoogleFonts.openSans(
                  fontSize: textSize,
                  fontWeight: FontWeight.w500,
                  color: primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
