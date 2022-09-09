 import 'package:aircast_2/controller/app_state_controller.dart';
import 'package:aircast_2/widgets/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateController>(
      create: (_) => AppStateController(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aircast",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lato"
      ),
      home: const SplashScreen(),
    );
  }

}