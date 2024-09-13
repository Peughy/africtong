import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RapidActionView extends StatelessWidget {
  const RapidActionView({super.key, required this.icon});
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(pad / 3),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(borderBottomNavigationRadius)),
        child: IconButton(
            onPressed: () {},
            icon: FaIcon(icon, size: 32, color: primaryColor)));
  }
}
