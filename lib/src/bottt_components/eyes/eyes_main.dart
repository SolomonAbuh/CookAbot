import 'package:cook_a_bot/src/model/bot_item_model.dart';
import 'bulging.dart';
import 'dizzy.dart';
import 'eva.dart';
import 'frame_1.dart';
import 'frame_2.dart';
import 'glow.dart';
import 'hal.dart';
import 'happy.dart';
import 'hearts.dart';
import 'round_frame_01.dart';
import 'round_frame_02.dart';
import 'round.dart';
import 'sensor.dart';
import 'shade_01.dart';

class EyeCollection {
  static List<BotItem> collection = [
    BotItem(EyeType.bulging, bulgingEyes),
    BotItem(EyeType.dizzy, dizzyEyes),
    BotItem(EyeType.eva, evaEyes),
    BotItem(EyeType.frame01, frame01Eyes),
    BotItem(EyeType.frame02, frame02Eyes),
    BotItem(EyeType.glow, glowEyes),
    BotItem(EyeType.hal, halEyes),
    BotItem(EyeType.happy, happyEyes),
    BotItem(EyeType.hearts, heartsEyes),
    BotItem(EyeType.round, roundEyes),
    BotItem(EyeType.roundFrame01, roundFrame01Eyes),
    BotItem(EyeType.roundFrame02, roundFrame02Eyes),
    BotItem(EyeType.sensor, sensorEyes),
    BotItem(EyeType.shade01, shade01Eyes)
  ];
}

enum EyeType {
  bulging,
  dizzy,
  eva,
  frame01,
  frame02,
  glow,
  hal,
  happy,
  hearts,
  round,
  roundFrame01,
  roundFrame02,
  sensor,
  shade01,
}
