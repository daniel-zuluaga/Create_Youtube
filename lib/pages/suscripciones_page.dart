import 'package:flutter/material.dart';

class SuscripcionesPage extends StatelessWidget {
  static String id = "suscripciones_page";
  const SuscripcionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/image/fondo_flutter.png"),
            Text("Sucripciones del canal !!! :)", style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}