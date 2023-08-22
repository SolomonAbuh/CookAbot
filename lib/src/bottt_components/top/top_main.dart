import '../../model/bot_item_model.dart';
import 'antenna_crooked.dart';
import 'antenna.dart';
import 'bulb_01_1.dart';
import 'bulb_01.dart';
import 'glowing_bulb_01.dart';
import 'glowing_bulb_02.dart';
import 'horns.dart';
import 'lights.dart';
import 'pyramid.dart';
import 'radar.dart';

class TopCollection {
  static List<BotItem> collection = [
    BotItem(TopType.antenna, antennaTop),
    BotItem(TopType.antennaCrooked, antennaCrookedTop),
    BotItem(TopType.bulb01, bulb01Top),
    BotItem(TopType.bulb011, bulb011Top),
    BotItem(TopType.glowingBulb01, glowingBulb01Top),
    BotItem(TopType.glowingBulb02, glowingBulb02Top),
    BotItem(TopType.horns, hornsTop),
    BotItem(TopType.lights, lightsTop),
    BotItem(TopType.pyramid, pyramidTop),
    BotItem(TopType.radar, radarTop),
  ];
}

enum TopType {
  antenna,
  antennaCrooked,
  bulb01,
  bulb011,
  glowingBulb01,
  glowingBulb02,
  horns,
  lights,
  pyramid,
  radar,
}
