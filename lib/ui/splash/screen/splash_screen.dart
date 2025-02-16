import 'dart:async';
import 'package:evently_app/ui/start_screen/screen/start_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'Splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  /*init 34an lma a7b akhaly haga mo3ina tzhar mara wa7da m4
  h7oto f l build l2n kda kol ma a3ml re build kol shoia hy3dha**/
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, StartScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
            body: Image.asset(
          "assets/images/splash_light.png",
          width: double.infinity,
          fit: BoxFit.contain,
        )),
      ),
    );
  }
}
