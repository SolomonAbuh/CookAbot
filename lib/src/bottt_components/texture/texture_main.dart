import 'package:cook_a_bot/src/model/bot_item_model.dart';
import 'camo_01.dart';
import 'camo_02.dart';
import 'circuits.dart';
import 'dirty_01.dart';
import 'dirty_02.dart';

class TextureCollection {
  static List<BotItem> collection = [
    BotItem(TextureType.none, () => ""),
    BotItem(TextureType.camo01, camo01Texture),
    BotItem(TextureType.camo02, camo02Texture),
    BotItem(TextureType.circuits, circuitsTexture),
    BotItem(TextureType.dirty01, dirty01Texture),
    BotItem(TextureType.dirty02, dirty02Texture)
  ];
}

enum TextureType {
  none,
  camo01,
  camo02,
  circuits,
  dirty01,
  dirty02,
}
