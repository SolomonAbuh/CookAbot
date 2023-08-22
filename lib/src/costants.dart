import 'package:flutter/material.dart';

BoxDecoration builderCardDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: const Color(0xFF7090B0).withOpacity(0.2),
      offset: const Offset(0, 16),
      blurRadius: 40,
    )
  ],
);

abstract class AppColors {
  static Color appBackgroundPageColor = const Color(0xFFFEFDF5);
  static Color darkBlue = const Color(0xFF2C3444);
}
