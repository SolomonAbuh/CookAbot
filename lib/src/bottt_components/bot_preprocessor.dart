import 'package:cook_a_bot/src/model/bot_item_model.dart';
import '../model/bottt.dart';
import 'eyes/eyes_main.dart';
import 'face/face_main.dart';
import 'mouth/mouth_main.dart';
import 'sides/sides_main.dart';
import 'texture/texture_main.dart';
import 'top/top_main.dart';

class BotttProcessor {
  late List<BotItem> _eyeCollection;
  late List<BotItem> _faceCollection;
  late List<BotItem> _mouthCollection;
  late List<BotItem> _sideCollection;
  late List<BotItem> _textureCollection;
  late List<BotItem> _topCollection;

  BotttProcessor() {
    _eyeCollection = EyeCollection.collection;
    _faceCollection = FaceCollection.collection;
    _mouthCollection = MouthCollection.collection;
    _sideCollection = SideCollection.collection;
    _textureCollection = TextureCollection.collection;
    _topCollection = TopCollection.collection;
  }

  String _group(String content, int x, int y) {
    return '<g transform="translate($x, $y)">$content</g>';
  }

  String processSVG(Bottt bottt) {
    
    var sideSVG = _sideCollection.firstWhere((element) =>
        element.id ==
        bottt.side); 
    var topSVG = _topCollection.firstWhere((element) =>
        element.id == bottt.top); 
    var faceSVG = _faceCollection.firstWhere((element) =>
        element.id ==
        bottt.face);
    var textureSVG = _textureCollection.firstWhere((element) =>
        element.id ==
        bottt.texture); 
    var mouthSVG = _mouthCollection.firstWhere((element) =>
        element.id ==
        bottt.mouth);
    var eyeSVG = _eyeCollection.firstWhere((element) =>
        element.id == bottt.eye); 

    return '''
    <svg viewBox="0 0 180 180" xmlns="http://www.w3.org/2000/svg" fill="none">',    
    ${_group(sideSVG.content(bottt.sideColor), 0, 66)},
    ${_group(topSVG.content(bottt.topColor), 41, 0)},
    ${_group(faceSVG.content(bottt.faceColor, textureSVG.content()), 25, 44)},
    ${_group(mouthSVG.content(), 52, 124)},
    ${_group(eyeSVG.content(), 38, 76)},
    '</svg>
    ''';
  }
}
