import 'package:africtong/src/commons/navigator_page_bar.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscussionPageView extends StatelessWidget {
  const DiscussionPageView(
      {super.key, required this.question, required this.response});
  final String question;
  final String response;

  @override
  Widget build(BuildContext context) {
    NavigatorPage navigatorPage = NavigatorPage();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            (question.length >= 45)
                ? "${question.substring(0, 42)}..."
                : question,
            style: GoogleFonts.openSans(
                fontSize: langSize, letterSpacing: -1, color: Colors.black),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: pad),
                child: IconButton(
                    onPressed: () =>
                        navigatorPage.changePage(context, const HomeView()),
                    icon: const FaIcon(FontAwesomeIcons.house,
                        size: 22, color: Colors.black))),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(pad),
                child: ListView(
                  children: [
                    // person question
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                            color: chooseLangOff,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    borderBottomNavigationRadius),
                                topRight: Radius.zero,
                                bottomRight: Radius.circular(
                                    borderBottomNavigationRadius),
                                bottomLeft: Radius.circular(
                                    borderBottomNavigationRadius))),
                        child: Text(
                          question,
                          style: GoogleFonts.openSans(
                              color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: hSpacing * 2,
                    ),

                    // response bot
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Image(image: AssetImage(botAssist), height: 40),
                          const SizedBox(width: 15),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          borderBottomNavigationRadius),
                                      topRight: Radius.circular(
                                          borderBottomNavigationRadius),
                                      bottomLeft: Radius.zero,
                                      bottomRight: Radius.circular(
                                          borderBottomNavigationRadius))),
                              child: Text(
                                response,
                                style: GoogleFonts.openSans(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Divider(
                  color: Colors.black26,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: GoogleFonts.openSans(
                              fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(
                                    borderBottomNavigationRadius)),
                            prefixIcon: const Icon(FontAwesomeIcons.robot),
                            hintText: botInputText,
                            hintStyle: GoogleFonts.openSans(fontSize: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    borderBottomNavigationRadius)),
                          ),
                          //   validator: (value) =>
                          //       loginController.validateEmail(value),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.send,
                            color: Colors.white, size: 28),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
