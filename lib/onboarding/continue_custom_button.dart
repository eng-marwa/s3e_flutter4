import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'text_styles.dart';
import 'theme.dart';

class ContinueCustomButton extends StatelessWidget {
  final VoidCallback onPressedCallback;
  const ContinueCustomButton({required this.onPressedCallback, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: ColorManager.selectedPageColor.withOpacity(0.5),
          offset: const Offset(0, 5),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ]),
      child: ElevatedButton(
          style: AppButtonTheme.continueButtonStyle,
          onPressed: onPressedCallback,
          child: Text(
            'Continue',
            style: TextStyles.continueText,
          )),
    );
  }
}
