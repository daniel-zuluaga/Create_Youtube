import 'package:create_youtube/src/pages/splash_screen.dart';
import 'package:create_youtube/src/router/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(_) => SplashScreen(), 
        MainPage.id: (_) => MainPage(),
        ShortsVideo.id: (_) => ShortsVideo(),
        CreateNewVideoYoutube.id: (_) => CreateNewVideoYoutube(),
        SuscripcionesPage.id:(_) => SuscripcionesPage() 
      },
    );
  }
}