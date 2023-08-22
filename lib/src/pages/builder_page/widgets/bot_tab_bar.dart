import 'package:flutter/material.dart';
import '../../../costants.dart';

class BotTabBar extends StatelessWidget {
  final TabController controller;
  const BotTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 650,
        child: TabBar(
          labelColor: AppColors.darkBlue,
          unselectedLabelColor: AppColors.darkBlue.withOpacity(0.5),
          dividerColor: Colors.transparent,
          indicatorColor: AppColors.darkBlue,
          controller: controller,
          tabs: const [
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Top 🎩',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Face 🤖',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Eyes 👁',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Mouth 👄',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Sides 👂'),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Texture 🧵'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
