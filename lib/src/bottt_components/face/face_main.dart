import 'package:cook_a_bot/src/model/bot_item_model.dart';
import 'round_01.dart';
import 'round_02.dart';
import 'square_01.dart';
import 'square_02.dart';
import 'square_03.dart';
import 'square_04.dart';

class FaceCollection {
  static List<BotItem> collection = [
    BotItem(FaceType.round01, round01Face),
    BotItem(FaceType.round02, round02Face),
    BotItem(FaceType.square01, square01Face),
    BotItem(FaceType.square02, square02Face),
    BotItem(FaceType.square03, square03Face),
    BotItem(FaceType.square04, square04Face),
  ];
}

enum FaceType {
  round01,
  round02,
  square01,
  square02,
  square03,
  square04,
}
