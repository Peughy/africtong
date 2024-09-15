import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/views/stats/card_stat_view.dart';
import 'package:flutter/material.dart';

class StatPresentation extends StatelessWidget {
  const StatPresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: pad),
      child: Column(children: [
        Row(
          children: [
            SizedBox(width: hSpacing / 2),
            CardStatView(
                text: statLecons,
                qte: 12,
                bgc: chooseLangOn,
                fgc: primaryColor),
            SizedBox(width: 12),
            CardStatView(
                text: statPrononciations,
                qte: 30,
                bgc: Colors.black,
                fgc: Colors.white),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            SizedBox(width: hSpacing / 2),
            CardStatView(
                text: statExercices,
                qte: 10,
                bgc: secondaryColor,
                fgc: Colors.black),
            SizedBox(width: 12),
            CardStatView(
                text: statQuizz, qte: 20, bgc: primaryColor, fgc: Colors.white),
          ],
        ),
      ]),
    );
  }
}
