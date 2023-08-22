// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:math';
import 'package:cook_a_bot/src/bottt_components/eyes/eyes_main.dart';
import 'package:cook_a_bot/src/bottt_components/face/face_main.dart';
import 'package:cook_a_bot/src/bottt_components/mouth/mouth_main.dart';
import 'package:cook_a_bot/src/bottt_components/sides/sides_main.dart';
import 'package:cook_a_bot/src/bottt_components/texture/texture_main.dart';
import 'package:cook_a_bot/src/bottt_components/top/top_main.dart';
import 'package:cook_a_bot/src/model/bottt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screenshot/screenshot.dart';

final botttNotifierProvider =
    StateNotifierProvider.autoDispose<BotttNotifier, Bottt>(
  (ref) => BotttNotifier(Bottt.initial()),
);

class BotttNotifier extends StateNotifier<Bottt> {
  BotttNotifier(Bottt initialState) : super(initialState);

  ScreenshotController screenshotController = ScreenshotController();

  List<Color> botColors = [
    Colors.blueGrey,
    Colors.orange,
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.green,
  ];

  void randomBotGenerator() {
    final faceList = FaceCollection.collection;
    final mouthList = MouthCollection.collection;
    final topList = TopCollection.collection;
    final sideList = SideCollection.collection;
    final textureList = TextureCollection.collection;
    final eyeList = EyeCollection.collection;

    final random = Random();

    final randomFaceIndex = random.nextInt(faceList.length);
    final randomMouthIndex = random.nextInt(mouthList.length);
    final randomTopIndex = random.nextInt(topList.length);
    final randomSideIndex = random.nextInt(sideList.length);
    final randomTextureIndex = random.nextInt(textureList.length);
    final randomEyeIndex = random.nextInt(eyeList.length);

    final randomFaceColor = botColors[random.nextInt(botColors.length)];
    final randomTopColor = botColors[random.nextInt(botColors.length)];
    final randomSideColor = botColors[random.nextInt(botColors.length)];

    final randomBottt = Bottt(
      faceColor: randomFaceColor,
      topColor: randomTopColor,
      sideColor: randomSideColor,
      eye: eyeList[randomEyeIndex].id,
      face: faceList[randomFaceIndex].id,
      mouth: mouthList[randomMouthIndex].id,
      side: sideList[randomSideIndex].id,
      texture: textureList[randomTextureIndex].id,
      top: topList[randomTopIndex].id,
    );

    state = randomBottt;
  }

  void updateFaceColor(Color newColor) {
    state = state.copyWith(faceColor: newColor);
  }

  void updateTopColor(Color newColor) {
    state = state.copyWith(topColor: newColor);
  }

  void updateSideColor(Color newColor) {
    state = state.copyWith(sideColor: newColor);
  }

  void updateEye(EyeType newEyeType) {
    state = state.copyWith(eye: newEyeType);
  }

  void updateFace(FaceType newFaceType) {
    state = state.copyWith(face: newFaceType);
  }

  void updateMouth(MouthType newMouthType) {
    state = state.copyWith(mouth: newMouthType);
  }

  void updateSide(SideType newSideType) {
    state = state.copyWith(side: newSideType);
  }

  void updateTexture(TextureType newTextureType) {
    state = state.copyWith(texture: newTextureType);
  }

  void updateTop(TopType newTopType) {
    state = state.copyWith(top: newTopType);
  }

  void downloadImage() {
    screenshotController.capture().then((image) {
      if (image != null) {
        final blob = Blob([image]);
        final url = Url.createObjectUrlFromBlob(blob);
        final anchor = AnchorElement(href: url)
          ..target = 'blank'
          ..download = 'bottt_${Random().nextInt(10000000)}.png'
          ..text = 'Click here to download';

        anchor.click();
        Url.revokeObjectUrl(url);
      }
    });
  }
}
