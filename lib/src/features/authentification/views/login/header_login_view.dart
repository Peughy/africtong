import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';

class HeaderLoginView extends StatelessWidget {
  const HeaderLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage(loginImage),
          height: 400,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(loginLargeText,
              style: GoogleFonts.montserrat(
                fontSize: lText,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.left),
        ),
        Text(
          loginText,
          style: GoogleFonts.montserrat(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ],
    );
  }
}
