import 'package:flutter/material.dart';

class CreateNewVideoYoutube extends StatelessWidget {
  const CreateNewVideoYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        width: double.infinity,
        height: double.infinity,
        child: const Center(
          child: Text("Create New Video to Youtube", selectionColor: Colors.black,),
        ),
      ),
    );
  }
}