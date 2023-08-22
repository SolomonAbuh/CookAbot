import 'package:flutter/material.dart';
import '../bottt_components/eyes/eyes_main.dart';
import '../bottt_components/face/face_main.dart';
import '../bottt_components/mouth/mouth_main.dart';
import '../bottt_components/sides/sides_main.dart';
import '../bottt_components/texture/texture_main.dart';
import '../bottt_components/top/top_main.dart';

class Bottt {
  Color faceColor;
  Color topColor;
  Color sideColor;
  EyeType eye;
  FaceType face;
  MouthType mouth;
  SideType side;
  TextureType texture;
  TopType top;

  Bottt({
    required this.faceColor,
    required this.topColor,
    required this.sideColor,
    required this.eye,
    required this.face,
    required this.mouth,
    required this.side,
    required this.texture,
    required this.top,
  });

  Bottt copyWith({
    Color? faceColor,
    Color? topColor,
    Color? sideColor,
    EyeType? eye,
    FaceType? face,
    MouthType? mouth,
    SideType? side,
    TextureType? texture,
    TopType? top,
  }) {
    return Bottt(
      faceColor: faceColor ?? this.faceColor,
      sideColor: sideColor ?? this.sideColor,
      topColor: topColor ?? this.topColor,
      eye: eye ?? this.eye,
      face: face ?? this.face,
      mouth: mouth ?? this.mouth,
      side: side ?? this.side,
      texture: texture ?? this.texture,
      top: top ?? this.top,
    );
  }

  static Bottt initial() {
    return Bottt(
      faceColor: Colors.blueGrey, // Default initial values
      topColor: Colors.blueGrey,
      sideColor: Colors.blueGrey,
      eye: EyeType.bulging,
      face: FaceType.square01,
      mouth: MouthType.diagram,
      side: SideType.antenna01,
      texture: TextureType.camo01,
      top: TopType.antenna,
    );
  }
}
