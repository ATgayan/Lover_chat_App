import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryRed = Color(0xFFFD1724);
  static const Color softPink = Color(0xFFFF9A9A);

  static const LinearGradient customGradient = LinearGradient(
    colors: [primaryRed, softPink],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
