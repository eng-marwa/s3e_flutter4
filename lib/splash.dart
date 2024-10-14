import 'dart:async';

import 'package:flutter/material.dart';
import 'package:s3e_flutter4/home.dart';
import 'package:s3e_flutter4/onboarding/home6.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () async {
        SharedPreferences instance = await SharedPreferences.getInstance();
        bool visit = instance.getBool('VISIT') ?? false;
        if (visit) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MyHomePage()));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const OnboardingScreen()));
        }
      },
    );
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
    );
  }
}
