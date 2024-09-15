import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuerySectionView extends StatelessWidget {
  const QuerySectionView({
    super.key,
    required this.title,
    required this.subTitle,
    required this.placeholder
  });

  final String title;
  final String subTitle;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pad),
      child: Column(children: [
        Text(
          title,
          style: GoogleFonts.dmSerifDisplay(
              fontSize: largeSize,
              fontWeight: FontWeight.bold,
              height: lineSpacing),
        ),
        const SizedBox(
          height: hSpacing,
        ),
        Text(subTitle, style: GoogleFonts.openSans(fontSize: textSize)),
        const SizedBox(
          height: hSpacing,
        ),
        Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: pad*0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: chooseLangOn,
                    borderRadius:
                        BorderRadius.circular(borderBottomNavigationRadius)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextFormField(
                        minLines: 1,
                        maxLines: 5,
                        style: GoogleFonts.openSans(
                            fontSize: 18, color: Colors.black),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          hintText: placeholder,
                          hintStyle: GoogleFonts.openSans(fontSize: 18),
                          contentPadding: const EdgeInsets.all(8),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send,
                            size: 28, color: Color.fromARGB(255, 96, 86, 86)))
                  ],
                ),
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
