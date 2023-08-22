// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../bottt_components/bot_character.dart';
import '../../../bottt_components/face/face_main.dart';
import '../../../providers/bot_provider.dart';
import '../../../costants.dart';

class FaceTabView extends ConsumerWidget {
  const FaceTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottt = ref.watch(botttNotifierProvider);
    final botttNotifier = ref.read(botttNotifierProvider.notifier);
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          FaceCollection.collection.length,
          (index) => InkWell(
            onTap: () =>
                botttNotifier.updateFace(FaceCollection.collection[index].id),
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
                                face: FaceCollection.collection[index].id,
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
                      border: index == bottt.face.index
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
