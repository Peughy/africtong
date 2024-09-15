import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/home/controllers/presentations/card_bot_presentation_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBotPresentation extends StatelessWidget {
  const CardBotPresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CardBotPresentationController cardBotPresentationController =
        CardBotPresentationController();
    final botPresentation = cardBotPresentationController.botPresentation;
    return Padding(
      padding: const EdgeInsets.only(left: pad),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          shrinkWrap: true,
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          itemCount: botPresentation.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: pad),
              child: Card(
                  color: botPresentation[index].color,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(borderBottomNavigationRadius)),
                  child: Padding(
                    padding: const EdgeInsets.all(pad),
                    child: Row(children: [
                      Image(
                        image: AssetImage(botPresentation[index].image),
                        height: 100,
                      ),
                      const SizedBox(width: pad),
                      AutoSizeText(
                        botPresentation[index].text,
                        style: GoogleFonts.openSans(
                            fontSize: textSize,
                            color: botPresentation[index].textColor),
                        textAlign: TextAlign.center,
                      )
                    ]),
                  )),
            );
          },
        ),
      ),
    );
  }
}
