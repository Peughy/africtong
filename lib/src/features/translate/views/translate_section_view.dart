import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/translate/controllers/translate_section_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TranslateSectionView extends StatefulWidget {
  const TranslateSectionView({super.key});

  @override
  State<TranslateSectionView> createState() => _TranslateSectionViewState();
}

class _TranslateSectionViewState extends State<TranslateSectionView> {
  TranslateSectionController translateSectionController =
      TranslateSectionController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(pad),
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Expanded(
              child: ListView(
            children: [
              TextFormField(
                maxLines: 10,
                minLines: 1,
                style: GoogleFonts.openSans(fontSize: lSize * 0.7),
                decoration: InputDecoration(
                    hintText: translateInputText,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle: GoogleFonts.openSans(fontSize: lSize * 0.7)),
                controller: translateSectionController.inputTextController,
                onChanged: (value) {
                  setState(() {
                    translateSectionController.inputChangeDectector(value);
                  });
                },
              ),
              const SizedBox(height: pad),
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: chooseLangOn, elevation: 0),
                    onPressed: () {
                      setState(() {
                        translateSectionController.paste().then((textPaste) {
                          translateSectionController.inputTextController.text =
                              textPaste;
                        });
                      });
                    },
                    label: Text(
                      "Coller",
                      style: GoogleFonts.openSans(
                          fontSize: btnText - 4,
                          color: primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    icon:
                        const Icon(FontAwesomeIcons.paste, color: primaryColor),
                  ),
                  const SizedBox(width: 10),

                  // display if input text is not empty
                  if (translateSectionController.isChange)
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: chooseLangOn, elevation: 0),
                      onPressed: () {
                        setState(() {
                          translateSectionController.inputSendDetector();
                        });
                      },
                      label: Text(
                        "Traduire",
                        style: GoogleFonts.openSans(
                            fontSize: btnText - 4,
                            color: primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      icon: const Icon(Icons.translate, color: primaryColor),
                    ),
                ],
              ),
              const SizedBox(height: pad),
              if (translateSectionController.isSend)
                Column(
                  children: [
                    const Divider(height: 1, color: primaryColor),
                    const SizedBox(height: pad),
                    SizedBox(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "HEfjhgrf",
                              style: GoogleFonts.openSans(
                                  fontSize: lSize * 0.7, color: primaryColor),
                            ))),
                    const SizedBox(height: pad * 2),

                    // copy traductor element
                    Align(
                      alignment: Alignment.topLeft,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: chooseLangOn, elevation: 0),
                        onPressed: () {},
                        label: Text(
                          "Copier",
                          style: GoogleFonts.openSans(
                              fontSize: btnText - 4,
                              color: primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        icon: const Icon(FontAwesomeIcons.copy,
                            color: primaryColor),
                      ),
                    ),
                  ],
                ),
            ],
          ))
        ]));
  }
}
