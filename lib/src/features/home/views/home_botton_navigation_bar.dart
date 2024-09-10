import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/home/controllers/home_bnb_controller.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBottonNavigationBar extends StatefulWidget {
  const HomeBottonNavigationBar({super.key});

  @override
  State<HomeBottonNavigationBar> createState() =>
      _HomeBottonNavigationBarState();
}

class _HomeBottonNavigationBarState extends State<HomeBottonNavigationBar> {
  HomeBnbController homeBnbController = HomeBnbController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      height: 70,
      itemCount: homeBnbController.iconList.length,
      tabBuilder: (int index, bool isActive) {
        final color = isActive ? primaryColor : Colors.black;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              homeBnbController.iconList[index],
              size: 24,
              color: color,
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AutoSizeText(
                homeBnbController.labels[index],
                style: GoogleFonts.openSans(
                    color: color,
                    fontSize: 14,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
              ),
            )
          ],
        );
      },
      backgroundColor: Colors.white,
      activeIndex: homeBnbController.bottomNavIndex,
      splashColor: primaryColor,
      splashSpeedInMilliseconds: 300,
      notchSmoothness: NotchSmoothness.defaultEdge,
      gapLocation: GapLocation.center,
      leftCornerRadius: borderBottomNavigationRadius,
      rightCornerRadius: borderBottomNavigationRadius,
      onTap: (index) =>
          setState(() => homeBnbController.bottomNavIndex = index),
    );
  }
}
