import 'package:create_youtube/src/widgets/bottom_menu_youtube.dart';
import 'package:flutter/material.dart';

class SuscripcionesPage extends StatelessWidget {
  static String id = "suscripciones_page";
  const SuscripcionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/image/fondo_flutter.png"),
              Text("Sucripciones del canal !!! :)", style: TextStyle(fontSize: 50),)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotomMenuYoutube(),

    );
  }
}