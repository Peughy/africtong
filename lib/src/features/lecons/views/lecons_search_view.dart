import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeconsSearchView extends StatelessWidget {
  const LeconsSearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pad),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              placeholderSearchLang,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: largeSize,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: hSpacing / 2),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: pad * 0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: chooseLangOn,
                      borderRadius: BorderRadius.circular(borderRadius)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: GoogleFonts.openSans(
                              fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            hintText: "Entrer une lecon",
                            hintStyle: GoogleFonts.openSans(fontSize: 18),
                            contentPadding: const EdgeInsets.all(8),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search_rounded,
                              size: 28, color: Color.fromARGB(255, 96, 86, 86)))
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
