import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/authentification/models/on_boarding/on_boarding_model.dart';
import 'package:africtong/src/features/authentification/views/onBoarding/on_boarding_last_page.dart';
import 'package:africtong/src/features/authentification/views/onBoarding/on_boarding_page.dart';

class OnBoardingController {
  final controller = LiquidController();
  int currentPage = 0;

  final pages = [
    // pages 1
    OnBoardingPage(
      model: const OnBoardingModel(
        image: onBoardingImage1,
        title: onBoardingLargeText1,
        supTitle: onBoardingText1,
        counter: onBoardingCounter1,
        bgColor: onBoardingPage1,
      ),
    ),

    // pages 2
    OnBoardingPage(
      model: const OnBoardingModel(
        image: onBoardingImage2,
        title: onBoardingLargeText2,
        supTitle: onBoardingText2,
        counter: onBoardingCounter2,
        bgColor: onBoardingPage2,
      ),
    ),

    // pages 3
    OnBoardingPage(
      model: const OnBoardingModel(
        image: onBoardingImage3,
        title: onBoardingLargeText3,
        supTitle: onBoardingText3,
        counter: onBoardingCounter3,
        bgColor: onBoardingPage3,
      ),
    ),

    // page 4
    const OnBoardingLastPage()
  ];

  void nextPage() {
    var nextPage = controller.currentPage + 1;
    // (controller.currentPage == 2) ? 0 : controller.currentPage + 1;
    controller.animateToPage(page: nextPage, duration: 1000);
  }

  void ignorer() {
    controller.animateToPage(page: 3, duration: 1000);
  }

  void pageChanged(int activePageIndex) {
    currentPage = activePageIndex;
  }
}
