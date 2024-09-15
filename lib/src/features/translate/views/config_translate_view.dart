import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/translate/controllers/config_translate_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfigTranslateView extends StatefulWidget {
  const ConfigTranslateView({
    super.key,
  });

  @override
  State<ConfigTranslateView> createState() => _ConfigTranslateViewState();
}

class _ConfigTranslateViewState extends State<ConfigTranslateView> {
  ConfigTranslateController configTranslateController =
      ConfigTranslateController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: chooseLangOn,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderBottomNavigationRadius),
                    topRight: Radius.circular(borderBottomNavigationRadius))),
            padding: const EdgeInsets.symmetric(horizontal: pad, vertical: pad),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: padVertical * 0.5,
                                  horizontal: pad * 0.7)),
                          onPressed: () {},
                          child: Text(configTranslateController.langStart,
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.5,
                                  color: Colors.white))),
                      IconButton(
                          onPressed: () {
                            setState(() {
                                String temp = configTranslateController.langStart;
                                 configTranslateController.langStart = configTranslateController.langEnd;
                                 configTranslateController.langEnd = temp;
                            });
                          },
                          // ignore: deprecated_member_use
                          icon: const Icon(FontAwesomeIcons.exchange,
                              size: 32, color: primaryColor)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: padVertical * 0.5,
                                  horizontal: pad * 0.7)),
                          onPressed: () {},
                          child: Text(configTranslateController.langEnd,
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.5,
                                  color: Colors.white))),
                    ]),
                const SizedBox(
                  height: hSpacing,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: pad * 1.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                        child: const Icon(FontAwesomeIcons.solidFilePdf,
                            color: Colors.black, size: 28),
                      ),
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: const BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                        child: const Icon(Icons.mic_rounded,
                            color: Colors.black, size: 36),
                      ),
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: const BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                        child: const Icon(Icons.camera_alt_rounded,
                            color: Colors.black, size: 28),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
