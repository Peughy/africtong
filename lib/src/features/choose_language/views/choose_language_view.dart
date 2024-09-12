import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/choose_language/views/languages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage(botIndicate),
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      learnLanguage,
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.black,
                        fontSize: largeSize * 0.7,
                        fontWeight: FontWeight.bold,
                        letterSpacing: letterSpacing,
                        height: lineSpacing,
                      ),
                    ),
                  ],
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
                          fillColor: chooseLangOff,
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
