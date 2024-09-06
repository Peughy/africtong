import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:africtong/src/commons/navigator_page.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/authentification/views/onBoarding/on_boarding_views.dart';


void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  NavigatorPage navigatorPage = NavigatorPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: const OnBoardingViews(),
    );
  }
}

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Text("Learn\nLanguage",
            style: GoogleFonts.pirataOne(
                fontSize: 96,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: letterSpacing,
                height: lineSpacing),
            textAlign: TextAlign.center),
      ),
    );
  }
}
