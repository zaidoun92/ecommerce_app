import 'package:get/get.dart';

// this class use to change language
class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "اهلا"},
        "en": {"1": "hi"},
      };
}
