import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/controllers/presentations/home_page_controller.dart';
import 'package:africtong/src/features/home/views/presentations/bot_presentation.dart';
import 'package:africtong/src/features/home/views/presentations/exercice_quizz_presentation.dart';
import 'package:africtong/src/features/home/views/presentations/language_presentation.dart';
import 'package:africtong/src/features/home/views/translate%20&%20bot_discussion/query_section_view.dart';
import 'package:africtong/src/features/home/views/translate%20&%20bot_discussion/questions_bot_view.dart';
import 'package:africtong/src/features/home/views/rapid_action/rapid_action_section.dart';
import 'package:africtong/src/features/home/views/stats/stat_presentation.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
   HomePageView({super.key});

  final HomePageController homePageController = HomePageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        // rapid action section
        const RapidActionSection(),
        const SizedBox(height: pad),

        // stat presentation
        const StatPresentation(),
        const SizedBox(height: pad),

        // language presentation
        LanguaguePresentation(homePageController: homePageController),
        const SizedBox(height: pad),

        // bot presentation section
        const BotPresentation(),
        const SizedBox(height: pad),

        // translation presentation
        const QuerySectionView(
            title: profitTraduction,
            subTitle: texteTraduction,
            placeholder: translateInputText),
        const SizedBox(height: pad),

        // exercice and quizz presentation
        const ExerciceQuizzPresentation(),
        const SizedBox(height: pad * 2),

        const QuerySectionView(
            title: profitBot, subTitle: texteBot, placeholder: botInputText),
        const SizedBox(height: pad / 2),

        const QuestionsBotView(),
        const SizedBox(height: pad * 2),
      ]),
    );
  }
}
