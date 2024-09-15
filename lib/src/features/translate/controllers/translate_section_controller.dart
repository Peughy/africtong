import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TranslateSectionController {
  bool isChange = false;
  bool isSend = false;
  var inputTextController = TextEditingController();

  void inputChangeDectector(String value) {
    if (value.isNotEmpty) {
      isChange = true;
    } else {
      isChange = false;
      isSend = false;
    }
  }

  void inputSendDetector() {
    (isChange == true) ? isSend = true : isSend = false;
  }

  Future<String> paste() async {
    ClipboardData? clipboardData =
        await Clipboard.getData(Clipboard.kTextPlain);
    return clipboardData!.text.toString();
  }
}
