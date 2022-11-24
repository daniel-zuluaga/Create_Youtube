import 'package:flutter/material.dart';

class ShortsVideo extends StatelessWidget {
  static String id = "shorts_video";
  const ShortsVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image/fondo_flutter.png"),
          const Text("Shorts del canal !!! :)", style: TextStyle(fontSize: 50),)
        ],
      )
    );
  }
}