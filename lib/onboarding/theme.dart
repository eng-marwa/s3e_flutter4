import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'color_manager.dart';

class AppButtonTheme {
  static ButtonStyle get continueButtonStyle => ElevatedButton.styleFrom(
      backgroundColor: ColorManager.selectedPageColor,
      fixedSize: Size(305, 58),
      // shadowColor: ColorManager.selectedPageColor,
      // elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));
}
