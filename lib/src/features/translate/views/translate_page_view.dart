import 'package:africtong/src/commons/header_bar.dart';
import 'package:africtong/src/features/translate/views/config_translate_view.dart';
import 'package:africtong/src/features/translate/views/translate_section_view.dart';
import 'package:flutter/material.dart';

class TranslatePageView extends StatefulWidget {
  const TranslatePageView({super.key});

  @override
  State<TranslatePageView> createState() => _TranslatePageViewState();
}

class _TranslatePageViewState extends State<TranslatePageView> {
  bool isChange = false;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  HeaderBar(title: "afric translate"),
      body: Stack(children: [
        TranslateSectionView(),
        ConfigTranslateView()
      ]),
    );
  }
}
