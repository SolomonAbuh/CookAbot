import 'package:cook_a_bot/src/bottt_components/texture/texture_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../bottt_components/bot_character.dart';
import '../../../providers/bot_provider.dart';
import '../../../costants.dart';

class TextureTabView extends ConsumerWidget {
  const TextureTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottt = ref.watch(botttNotifierProvider);
    final botttNotifier = ref.read(botttNotifierProvider.notifier);
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          TextureCollection.collection.length,
          (index) => InkWell(
            onTap: () => botttNotifier
                .updateTexture(TextureCollection.collection[index].id),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 100,
                      color: const Color(0xFFD9D9D9),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            height: 110,
                            child: BotttCharacter(
                              height: 200,
                              bottt: bottt.copyWith(
                                texture: TextureCollection.collection[index].id,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: index == bottt.texture.index
                          ? Border.all(
                              color: AppColors.darkBlue,
                              width: 5,
                              strokeAlign: BorderSide.strokeAlignInside,
                            )
                          : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
