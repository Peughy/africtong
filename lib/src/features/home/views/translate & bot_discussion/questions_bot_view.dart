import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/home/controllers/translate%20&%20bot_discussion/question_bot_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsBotView extends StatelessWidget {
  const QuestionsBotView({super.key});

  @override
  Widget build(BuildContext context) {
    final QuestionBotController questionBotController = QuestionBotController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pad),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: questionBotController.questions.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: pad / 3),
                  child: Card(
                      color: questionColor,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(borderRadius),
                          side: const BorderSide(
                              width: 1, color: secondaryColor)),
                      child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text(
                              questionBotController.questions[index].question,
                              style: GoogleFonts.openSans(fontSize: 16)))),
                ),
              );
            }),
      ),
    );
  }
}
