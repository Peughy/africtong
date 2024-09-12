import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/views/card_bot_presentation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotPresentation extends StatelessWidget {
  const BotPresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: pad),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              profitJimi,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: largeSize,
                  letterSpacing: letterSpacing,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const CardBotPresentation(),
        const SizedBox(height: pad),
      ],
    );
  }
}
