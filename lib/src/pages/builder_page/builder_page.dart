import 'package:cook_a_bot/src/extentions.dart';
import 'package:cook_a_bot/src/providers/background_provider.dart';
import 'package:cook_a_bot/src/costants.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/background_color_card.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/bottt_avatar.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/eye_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/face_color_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/face_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/mouth_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/side_color_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/side_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/bot_tab_bar.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/texture_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/top_color_tab_view.dart';
import 'package:cook_a_bot/src/pages/builder_page/widgets/top_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import '../../providers/bot_provider.dart';
import 'widgets/nav_bar.dart';

class BuilderPage extends ConsumerStatefulWidget {
  static const String routeName = '/builder';
  const BuilderPage({super.key});

  @override
  ConsumerState<BuilderPage> createState() => _BuilderPageState();
}

class _BuilderPageState extends ConsumerState<BuilderPage>
    with TickerProviderStateMixin {
  final GlobalKey globalKey = GlobalKey();

  int selectedColorIndex = 0;

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottt = ref.watch(botttNotifierProvider);
    final botttNotifier = ref.watch(botttNotifierProvider.notifier);
    final backgroundColor = ref.watch(backgroundNotifierProvider);
    final backgroundNotifier = ref.watch(backgroundNotifierProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          const NavBar(),
          BotttAvatar(
            bottt: bottt,
            backgroundOn: backgroundColor.backgroundOn,
            color: backgroundColor.color,
          ),
          1.h.sH(),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                botttNotifier.randomBotGenerator();
                backgroundNotifier.randomBackgroundGenerator();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Random',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  1.w.sW(),
                  const Icon(
                    Icons.shuffle,
                    color: Colors.white,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
          1.h.sH(),
          Container(
            width: double.infinity,
            height: 24.h,
            decoration: builderCardDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BotTabBar(controller: controller),
                Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: const [
                      TopTabView(),
                      FaceTabView(),
                      EyeTabView(),
                      MouthTabView(),
                      SideTabView(),
                      TextureTabView()
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 16.h,
            decoration: builderCardDecoration,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: TabBarView(
                      controller: controller,
                      children: const [
                        TopColorTabView(),
                        FaceColorTabView(),
                        SizedBox(),
                        SizedBox(),
                        SideColorTabView(),
                        SizedBox(),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 3,
                    color: Colors.blueGrey,
                  ),
                  const BackgroundColorCard(),
                ],
              ),
            ),
          ),
          3.h.sH()
        ],
      ).pagePadding(),
    );
  }
}
