import 'dart:async';

import 'package:create_youtube/src/router/router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String id = "splash_screen";
  
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
    () => Navigator.pushReplacementNamed(context, MainPage.id) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Center(
          child: Container(
            height: 150,
            child: Image.asset("assets/image/youtubelogo.png"),
          ),
        ),
      ),
    );
  }
}