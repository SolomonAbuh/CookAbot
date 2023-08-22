import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../model/bottt.dart';
import 'bot_preprocessor.dart';


class BotttCharacter extends StatelessWidget {
  final double? height;
  final Bottt bottt;

  const BotttCharacter({super.key, required this.bottt, this.height});

  @override
  Widget build(BuildContext context) {
    String svgString = "";
    var botttProcessor = BotttProcessor();

    svgString = botttProcessor.processSVG(bottt);

    return SvgPicture.string(
      svgString,
      height: height ?? 300,
    );
  }
}
