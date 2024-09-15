import 'package:africtong/src/commons/header_bar.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/bot_discussion/controllers/discussion_interface/discussion_interface_controller.dart';
import 'package:africtong/src/features/bot_discussion/views/discussion_interface/discussion_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BotInterfaceView extends StatelessWidget {
  const BotInterfaceView({super.key});

  @override
  Widget build(BuildContext context) {
    DiscussionInterfaceController discussionInterfaceController =
        DiscussionInterfaceController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HeaderBar(
        title: tDiscussion,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: secondaryColor,
        label: Text(tNewDiscussion.toUpperCase(),
            style: GoogleFonts.openSans(
                fontSize: btnText,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        icon: const FaIcon(FontAwesomeIcons.solidPenToSquare,
            color: Colors.black, size: 22),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: pad),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: pad, vertical: pad * 0.5),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(botHappy),
                    height: 40,
                  ),
                  const SizedBox(width: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Vos discussions",
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: mediumSize + 4,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: discussionInterfaceController.discQ.length,
                itemBuilder: (context, val) => DiscussionSection(
                    question: discussionInterfaceController.discQ[val],
                    response: discussionInterfaceController.discR[val],
                    time: discussionInterfaceController.discH[val]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
