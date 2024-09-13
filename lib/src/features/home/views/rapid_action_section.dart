import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/home/views/rapid_action_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RapidActionSection extends StatelessWidget {
  const RapidActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: pad, vertical: pad / 2),
      decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(borderBottomNavigationRadius),
              bottomRight: Radius.circular(borderBottomNavigationRadius))),
      child: const Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RapidActionView(icon: FontAwesomeIcons.language),
              RapidActionView(icon: FontAwesomeIcons.plus),
              RapidActionView(icon: FontAwesomeIcons.rankingStar),
              RapidActionView(icon: FontAwesomeIcons.userLarge),
            ],
          )
        ],
      ),
    );
  }
}
