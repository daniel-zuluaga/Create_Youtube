import 'package:create_youtube/pages/create_new_video_youtube.dart';
import 'package:create_youtube/pages/main_page.dart';
import 'package:create_youtube/pages/shorts_video.dart';
import 'package:create_youtube/pages/suscripciones_page.dart';
import 'package:flutter/material.dart';

import '../models/menu_option.dart';


class AppRoutes{

  static const initialRoute = "home";


  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',screen:  const MainPage()),
    MenuOption(route: 'shortsVideo', screen:  const ShortsVideo()),
    MenuOption(route: 'suscripcionesPage', screen:  const SuscripcionesPage()),
    MenuOption(route: 'CreateNewVideo', screen:  const CreateNewVideoYoutube()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext) > appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const MainPage() });
    
    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes; 
  }

    static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: ((context) => const MainPage())
    );
  }
}