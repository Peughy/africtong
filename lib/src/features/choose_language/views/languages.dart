import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/choose_language/controllers/choose_language_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Languages extends StatefulWidget {
  const Languages({
    super.key,
  });

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  ChooseLanguageController chooseLanguageController =
      ChooseLanguageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: chooseLanguageController.langues.length,
        itemBuilder: (context, val) {
          return Column(children: [
            InkWell(
              splashColor: primaryColor,
              onTap: () {
                setState(() {
                  chooseLanguageController.setLanguage(
                      chooseLanguageController, val);
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: hSpacing, horizontal: 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: chooseLanguageController.langues[val].chooseLangue
                      ? chooseLangOn
                      : chooseLangOff,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(chooseLanguageController.langues[val].nomLangue[0],
                            style: GoogleFonts.pirataOne(
                                fontSize: largeSize,
                                fontWeight: FontWeight.bold,
                                color: chooseLanguageController
                                        .langues[val].chooseLangue
                                    ? primaryColor
                                    : Colors.black)),
                        const SizedBox(width: 15),
                        Text(chooseLanguageController.langues[val].nomLangue,
                            style: GoogleFonts.montserrat(
                                fontSize: langSize,
                                fontWeight: FontWeight.bold,
                                color: chooseLanguageController
                                        .langues[val].chooseLangue
                                    ? primaryColor
                                    : Colors.black)),
                      ],
                    ),
                    if (chooseLanguageController.langues[val].chooseLangue)
                      const Icon(Icons.check, color: primaryColor, size: 32)
                  ],
                ),
              ),
            ),
            const Divider(
              color: primaryColor,
              height: 2,
            )
          ]);
        },
      ),
    );
  }
}

// Icon(Icons.check, color: primaryColor, size: 32)