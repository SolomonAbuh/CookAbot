import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final backgroundNotifierProvider =
    StateNotifierProvider.autoDispose<BackgroundNotifier, BackgroundState>(
  (ref) => BackgroundNotifier(
    BackgroundState(
      backgroundOn: false,
      color: Colors.blueGrey.shade200,
    ),
  ),
);

class BackgroundState {
  final bool backgroundOn;
  final Color color;

  BackgroundState({required this.backgroundOn, required this.color});

  BackgroundState copyWith({
    bool? backgroundOn,
    Color? color,
  }) {
    return BackgroundState(
      backgroundOn: backgroundOn ?? this.backgroundOn,
      color: color ?? this.color,
    );
  }
}

// Create a StateNotifier for BackgroundState
class BackgroundNotifier extends StateNotifier<BackgroundState> {
  BackgroundNotifier(BackgroundState initialState) : super(initialState);
  List<Color> backgroundColor = [
    Colors.blueGrey.shade200,
    Colors.orange.shade200,
    Colors.yellow.shade200,
    Colors.blue.shade200,
    Colors.indigo.shade200,
    Colors.purple.shade200,
    Colors.pink.shade200,
    Colors.teal.shade200,
    Colors.green.shade200,
  ];

  void randomBackgroundGenerator() {
    final random = Random();
    final randomColorIndex = random.nextInt(backgroundColor.length);

    state = state.copyWith(color: backgroundColor[randomColorIndex]);
  }

  Function(bool)? onChanged(bool isOn) {
    state = state.copyWith(backgroundOn: isOn);
    return null;
  }

  void setColor(index) {
    state = state.copyWith(color: backgroundColor[index]);
  }
}
