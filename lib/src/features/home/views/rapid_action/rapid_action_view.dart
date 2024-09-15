import 'package:africtong/src/commons/navigator_page_bar.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RapidActionView extends StatelessWidget {
  const RapidActionView({super.key, required this.icon, required this.route});
  final dynamic icon;
  final dynamic route;

  @override
  Widget build(BuildContext context) {
    NavigatorPage navigatorPage = NavigatorPage();
    return Container(
        padding: const EdgeInsets.all(pad / 3),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(borderBottomNavigationRadius)),
        child: IconButton(
            onPressed: () => navigatorPage.changePage(context, route),
            icon: FaIcon(icon, size: 32, color: primaryColor)));
  }
}
