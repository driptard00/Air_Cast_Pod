import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'introscreen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset("images/splashlogo.png"), 
      nextScreen: const IntroScreen(),
      animationDuration: const Duration(seconds: 1),
      centered: true,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
    );
    
  }
}