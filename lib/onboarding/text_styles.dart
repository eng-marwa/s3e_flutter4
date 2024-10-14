import 'package:flutter/material.dart';

import 'color_manager.dart';

class TextStyles {
  static TextStyle get onboardingTitle => const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 31,
      fontFamily: 'AvenirNext',
      color: Colors.black);

  static TextStyle get onboardingBody => const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      fontFamily: 'AvenirNext',
      color: ColorManager.onboardingTextColor);

  static TextStyle get continueText => const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontFamily: 'AvenirNext',
      color: ColorManager.continueTextColor);
}
