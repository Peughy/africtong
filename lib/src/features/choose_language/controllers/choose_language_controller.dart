import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/choose_language/models/choose_language_model.dart';

class ChooseLanguageController {
  // list of languages
  List<ChooseLanguageModel> langues = [
    ChooseLanguageModel(nomLangue: mLLang, chooseLangue: true),
    ChooseLanguageModel(nomLangue: eLLang),
  ];

  // method to change language
  void setLanguage(chooseLanguageController, val) {
    chooseLanguageController.langues[val].chooseLangue =
        !chooseLanguageController.langues[val].chooseLangue;
    for (int i = 0; i < chooseLanguageController.langues.length; i++) {
      if (i != val && chooseLanguageController.langues[i].chooseLangue) {
        chooseLanguageController.langues[i].chooseLangue =
            !chooseLanguageController.langues[i].chooseLangue;
      }
    }
  }
}
