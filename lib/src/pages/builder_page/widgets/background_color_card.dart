import 'package:cook_a_bot/src/providers/background_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class BackgroundColorCard extends ConsumerStatefulWidget {
  const BackgroundColorCard({super.key});

  @override
  ConsumerState<BackgroundColorCard> createState() =>
      _BackgroundColorCardState();
}

class _BackgroundColorCardState extends ConsumerState<BackgroundColorCard> {
  var selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    final backgroundState = ref.watch(backgroundNotifierProvider);
    final backgroundNotifier = ref.read(backgroundNotifierProvider.notifier);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Background 🎨',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 10,
                  child: Switch(
                    value: backgroundState.backgroundOn,
                    onChanged: backgroundNotifier.onChanged,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Opacity(
                opacity: backgroundState.backgroundOn ? 1 : 0.1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    backgroundNotifier.backgroundColor.length,
                    (index) => InkWell(
                      onTap: backgroundState.backgroundOn
                          ? () {
                              backgroundNotifier.setColor(index);
                            }
                          : null,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 45,
                            decoration: BoxDecoration(
                              color: backgroundNotifier.backgroundColor[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                          backgroundNotifier.backgroundColor[index] ==
                                  backgroundState.color
                              ? Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 55,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: backgroundState.backgroundOn
                                            ? backgroundNotifier
                                                .backgroundColor[index]
                                            : Colors.transparent,
                                        width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
