import 'package:cook_a_bot/src/providers/bot_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';

import '../../../bottt_components/bot_character.dart';
import '../../../model/bottt.dart';

class BotttAvatar extends ConsumerWidget {
  final Bottt bottt;
  final bool backgroundOn;
  final Color color;
  const BotttAvatar(
      {super.key,
      required this.bottt,
      required this.backgroundOn,
      required this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final botttNotifier = ref.read(botttNotifierProvider.notifier);
    return Expanded(
      child: Screenshot(
        controller: botttNotifier.screenshotController,
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundOn ? color : null,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              BotttCharacter(
                bottt: bottt,
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
