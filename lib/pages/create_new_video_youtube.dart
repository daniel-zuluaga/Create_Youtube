import 'package:create_youtube/widgets/bottom_menu_youtube.dart';
import 'package:flutter/material.dart';

class CreateNewVideoYoutube extends StatelessWidget {
  static String id = "create_new_video_youtube";

  const CreateNewVideoYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.green,
          width: double.infinity,
          height: double.infinity,
          child: const Center(
            child: Text("Create New Video to Youtube", selectionColor: Colors.black,),
          ),
        ),
      ),
      bottomNavigationBar: BotomMenuYoutube(),
    );
  }
}