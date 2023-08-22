import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/bot_provider.dart';

class SideColorTabView extends ConsumerWidget {
  const SideColorTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottt = ref.watch(botttNotifierProvider);
    final botttNotifier = ref.read(botttNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color of the Side 👂',
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              botttNotifier.botColors.length,
              (index) => InkWell(
                onTap: () {
                  botttNotifier.updateSideColor(botttNotifier.botColors[index]);
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 45,
                      decoration: BoxDecoration(
                        color: botttNotifier.botColors[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                    bottt.sideColor == botttNotifier.botColors[index]
                        ? Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 55,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: botttNotifier.botColors[index],
                                width: 3,
                              ),
                              shape: BoxShape.circle,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
