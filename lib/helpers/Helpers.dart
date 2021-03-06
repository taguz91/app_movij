import 'dart:math';
import 'package:app_movij/utils/global.dart';

class Helpers {
  static List getRandomList(List list) {
    int seed = Global().randomInt;
    return list..shuffle(Random(seed));
  }

  static speak(String text) async {
    await Global().ftts.speak(text);
  }
}
