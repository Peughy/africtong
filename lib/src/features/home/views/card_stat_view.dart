import 'package:africtong/src/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardStatView extends StatelessWidget {
  const CardStatView(
      {super.key,
      required this.text,
      required this.qte,
      required this.bgc,
      required this.fgc});
  final String text;
  final int qte;
  final Color bgc;
  final Color fgc;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(pad),
        decoration: BoxDecoration(
            color: bgc,
            borderRadius: BorderRadius.circular(borderBottomNavigationRadius)),
        child: Column(children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              text,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30, fontWeight: FontWeight.bold, color: fgc),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              qte.toString(),
              style: GoogleFonts.openSans(
                  fontSize: largeSize + 4,
                  fontWeight: FontWeight.bold,
                  color: fgc),
            ),
          )
        ]),
      ),
    );
  }
}
