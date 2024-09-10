import 'package:africtong/src/features/authentification/models/on_boarding/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({
    super.key,
    required this.model,
  });

  OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: model.bgColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(model.image),
                  height: 300,
                ),
                Column(
                  children: [
                    Text(
                      model.title,
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 46,
                        height: 1,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Text(model.supTitle,
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        textAlign: TextAlign.center),
                  ],
                ),
                const SizedBox(height: 10,),
                Text(model.counter,
                    style: GoogleFonts.montserrat(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(
                  height: 70.0,
                )
              ]),
        ));
  }
}
