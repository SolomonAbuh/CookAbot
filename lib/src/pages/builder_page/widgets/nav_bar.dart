// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_a_bot/src/extentions.dart';
import 'package:cook_a_bot/src/providers/bot_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

class NavBar extends ConsumerWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final botProviderNotifier = ref.read(botttNotifierProvider.notifier);
    return SizedBox(
      height: 12.h,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          'assets/logo.png',
          height: 18,
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            botProviderNotifier.downloadImage();
          },
          child: Row(
            children: [
              const Text(
                'Download',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              1.w.sW(),
              const Icon(
                Icons.download,
                color: Colors.white,
                size: 16,
              )
            ],
          ),
        )
      ]),
    );
  }
}
