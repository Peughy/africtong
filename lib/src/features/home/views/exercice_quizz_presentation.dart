import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciceQuizzPresentation extends StatelessWidget {
  const ExerciceQuizzPresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(pad),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Consolidez vos\nacquis avec\ndes quizz et\nexercices",
                  style: GoogleFonts.dmSerifDisplay(
                      fontWeight: FontWeight.bold,
                      fontSize: largeSize,
                      color: Colors.white),
                ),
                const SizedBox(width: 15),
                const Image(
                    image: AssetImage(quizzImage), height: 150)
              ],
            ),
          ),
          const SizedBox(height: hSpacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: pad),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 1.5, color: Colors.white)),
                  onPressed: () {},
                  child: Text(statExercices.toUpperCase(),
                      style: GoogleFonts.roboto(
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: pad),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor),
                  onPressed: () {},
                  child: Text(statQuizz.toUpperCase(),
                      style: GoogleFonts.roboto(
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                          color: primaryColor)),
                ),
              ),
            ],
          ),
          const SizedBox(height: hSpacing)
        ],
      ),
    );
  }
}
