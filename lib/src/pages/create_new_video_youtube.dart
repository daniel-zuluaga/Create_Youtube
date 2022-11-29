import 'package:create_youtube/src/widgets/bottom_menu_youtube.dart';
import 'package:flutter/material.dart';

class CreateNewVideoYoutube extends StatelessWidget {
  static String id = "create_new_video_youtube";

  const CreateNewVideoYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text("Hola")
        ),
      ),
    );
  }
}