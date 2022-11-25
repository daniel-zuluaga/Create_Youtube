import 'package:create_youtube/widgets/bottom_menu_youtube.dart';
import 'package:flutter/material.dart';

class ShortsVideo extends StatelessWidget {
  static String id = "shorts_video";
  const ShortsVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/image/fondo_flutter.png"),
            const Text("Shorts del canal !!! :)", style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
      bottomNavigationBar: BotomMenuYoutube(),

    );
  }
}