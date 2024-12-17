import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryRed = Color(0xFFFD1724);
  static const Color softPink = Color(0xFFFF9A9A);

  static const Color massageColor1 = Color(0xFFFD5B5E);
  static const Color massageColor2 = Color(0xFFF8C9FF);

  static const LinearGradient customGradient = LinearGradient(
    colors: [primaryRed, softPink],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient msenderGradient = LinearGradient(
    colors: [massageColor1, massageColor2],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient mriseverGradient = LinearGradient(
    colors: [massageColor1, massageColor2],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
