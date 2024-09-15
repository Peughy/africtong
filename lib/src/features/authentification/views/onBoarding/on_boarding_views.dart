import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/features/authentification/controllers/onBoarding/on_boarding_controller.dart';
import 'package:africtong/src/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViews extends StatefulWidget {
  const OnBoardingViews({super.key});

  @override
  State<OnBoardingViews> createState() => _OnBoardingViewsState();
}

class _OnBoardingViewsState extends State<OnBoardingViews> {
  final OnBoardingController obController = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: obController.pages,
          liquidController: obController.controller,
          onPageChangeCallback: pageChanged,
          slideIconWidget: const Icon(
            Icons.arrow_back_ios,
            size: 32,
            color: darkColor,
          ),
          // enableLoop: true,
          enableSideReveal: true,
          enableLoop: false,
        ),
        Positioned(
          bottom: 80.0,
          child: OutlinedButton(
            onPressed: obController.nextPage,
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
            ),
            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: darkColor, shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios,
                        color: Colors.white))),
          ),
        ),
        Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.navigatorPage
                  .changePage(context, const HomeView()),
              child: Text("Ignorer",
                  style: GoogleFonts.montserrat(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            )),
        Positioned(
          bottom: 20,
          child: AnimatedSmoothIndicator(
            activeIndex: obController.currentPage,
            count: obController.pages.length,
            effect:
                const WormEffect(activeDotColor: Colors.black, dotHeight: 5.0),
          ),
        )
      ],
    ));
  }

  void pageChanged(int activePageIndex) {
    setState(() {
      obController.currentPage = activePageIndex;
    });
  }
}
