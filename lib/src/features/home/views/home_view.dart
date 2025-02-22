import 'package:africtong/src/commons/navigator_page_bar.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/bot_discussion/views/discussion_interface/discussion_interface_view.dart';
import 'package:africtong/src/features/home/controllers/presentations/home_controller.dart';
import 'package:africtong/src/features/home/views/presentations/home_page_view.dart';
import 'package:africtong/src/features/lecons/views/lecons_view.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageContent(),
    );
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  // variable
  HomeController homeController = HomeController();
  NavigatorPage navigatorPage = NavigatorPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          [appName, statLecons, statPrononciations, statExercices, statQuizz][
              homeController.bottomNavIndex +
                  1], // quicksand, dosis, oxygen, comfortaa
          style: GoogleFonts.comfortaa(
              fontSize: 32, letterSpacing: -1, color: Colors.white),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: pad),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      homeController.bottomNavIndex = -1;
                    });
                  },
                  icon: const FaIcon(FontAwesomeIcons.house,
                      size: 26, color: Colors.white))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            navigatorPage.changePage(context, const BotInterfaceView()),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: secondaryColor,
        child: const Image(
          image: AssetImage(botAssist),
          height: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          height: 70,
          itemCount: homeController.iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? primaryColor : Colors.black;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  homeController.iconList[index],
                  size: 24,
                  color: color,
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: AutoSizeText(
                    homeController.labels[index],
                    style: GoogleFonts.openSans(
                        color: color,
                        fontSize: 14,
                        fontWeight:
                            isActive ? FontWeight.bold : FontWeight.normal),
                  ),
                )
              ],
            );
          },
          backgroundColor: Colors.white,
          activeIndex: homeController.bottomNavIndex,
          splashColor: primaryColor,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: borderBottomNavigationRadius,
          rightCornerRadius: borderBottomNavigationRadius,
          onTap: (index) {
            setState(() => homeController.bottomNavIndex = index);
          }),
      body: [HomePageView(), LeconsView()][homeController.bottomNavIndex + 1],
    );
  }
}
