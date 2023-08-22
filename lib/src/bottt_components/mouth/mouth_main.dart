
import 'package:cook_a_bot/src/model/bot_item_model.dart';

import 'bite.dart';
import 'diagram.dart';
import 'grill_01.dart';
import 'grill_02.dart';
import 'grill_03.dart';
import 'smile_01.dart';
import 'smile_02.dart';
import 'square_01.dart';
import 'square_02.dart';

class MouthCollection {

  static List<BotItem> collection = [
    BotItem(MouthType.bite, biteMouth),
    BotItem(MouthType.diagram, diagramMouth),
    BotItem(MouthType.grill01, grill01Mouth),
    BotItem(MouthType.grill02, grill02Mouth),
    BotItem(MouthType.grill03, grill03Mouth),
    BotItem(MouthType.dmile01, smile01Mouth),
    BotItem(MouthType.dmile02, smile02Mouth),
    BotItem(MouthType.square01, square01Mouth),
    BotItem(MouthType.square02, square02Mouth)
  ];
}

enum MouthType {
  bite,
  diagram,
  grill01,
  grill02,
  grill03,
  dmile01,
  dmile02,
  square01,
  square02,
}
