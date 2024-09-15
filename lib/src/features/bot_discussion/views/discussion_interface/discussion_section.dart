import 'package:africtong/src/commons/navigator_page_bar.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/bot_discussion/views/discussion_page/discussion_page_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscussionSection extends StatelessWidget {
  const DiscussionSection({
    super.key,
    required this.question,
    required this.time,
    required this.response,
  });

  final String question, time, response;

  @override
  Widget build(BuildContext context) {
    NavigatorPage navigatorPage = NavigatorPage();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: pad * 0.1),
      child: InkWell(
        onTap: () => navigatorPage.changePage(context,
             DiscussionPageView(question: question, response: response)),
        child: Card(
          color: Colors.white,
          elevation: 1,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: pad, vertical: pad * 0.5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        (question.length >= 45)
                            ? "${question.substring(0, 42)}..."
                            : question,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.openSans(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(time)
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      (response.length >= 100)
                          ? "${response.substring(0, 100)}..."
                          : response,
                      style: GoogleFonts.openSans(fontSize: 18)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
