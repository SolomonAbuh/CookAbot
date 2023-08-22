import 'package:cook_a_bot/src/model/bot_item_model.dart';

import 'antenna_01.dart';
import 'antenna_02.dart';
import 'cables_01.dart';
import 'cables_02.dart';
import 'round.dart';
import 'square_assymetric.dart';
import 'square.dart';

class SideCollection {
  static List<BotItem> collection = [
    BotItem(SideType.antenna01, antenna01Side),
    BotItem(SideType.antenna02, antenna02Side),
    BotItem(SideType.cables01, cables01Side),
    BotItem(SideType.cables02, cables02Side),
    BotItem(SideType.round, roundSide),
    BotItem(SideType.square, squareSide),
    BotItem(SideType.squareAssymetric, squareAssymetricSide),
  ];
}

enum SideType {
  antenna01,
  antenna02,
  cables01,
  cables02,
  round,
  square,
  squareAssymetric,
}
