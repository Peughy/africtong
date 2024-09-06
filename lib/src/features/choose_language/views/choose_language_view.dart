import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/choose_language/views/languages.dart';

class ChooseLanguageView extends StatelessWidget {
  const ChooseLanguageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: emptySpace),
              Padding(
                padding: const EdgeInsets.all(pad),
                child: Text(
                  learnLanguage,
                  style: GoogleFonts.dmSerifDisplay(
                    color: primaryColor,
                    fontSize: largeText,
                    fontWeight: FontWeight.bold,
                    letterSpacing: letterSpacing,
                    height: lineSpacing,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: pad,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: chooseLang,
                          hintText: searchLang,
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          suffixIcon: const Icon(Icons.search),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: pad,
              ),
              const Languages(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 40,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding:
                          const EdgeInsets.symmetric(vertical: padVertical),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(borderRadius))),
                  child: Text(
                    tchooseLang.toUpperCase(),
                    style: GoogleFonts.openSans(
                        fontSize: btnText, color: Colors.white),
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
