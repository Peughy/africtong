class ConfigTranslateController {
  String langStart = "Medumba";
  String langEnd = "Francais";

  void changeLange(String langStart, String langEnd) {
    final String temp = langStart;
    langStart = langEnd;
    langEnd = temp;
  }
}
