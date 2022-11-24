import 'package:create_youtube/pages/main_page.dart';
import 'package:create_youtube/pages/shorts_video.dart';
import 'package:create_youtube/pages/suscripciones_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotomMenuYoutube extends StatefulWidget {
  @override
  _BotomMenuYoutubeState createState() => _BotomMenuYoutubeState();
}

class _BotomMenuYoutubeState extends State<BotomMenuYoutube> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home, 
            size: 30,
            ),
          label: "Principal",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.compass,
            size: 30,
          ),
          label: "Explorar",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline_outlined,
            size: 50,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions_outlined,
            size: 30,
          ),
          label: "Suscripciones",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.video_library_outlined,
            size: 30,
            ),
          label: "Biblioteca",
        ),
      ],
      currentIndex: _selectIndex,
      selectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          _selectIndex = index;
          switch (_selectIndex) {
            case 0:
              Navigator.pushNamed(context, MainPage.id);
              break;

            case 1:
              Navigator.pushNamed(context, ShortsVideo.id);
              break;

            case 2:
              Navigator.pushNamed(context, SuscripcionesPage.id);
              break;
            default:
          }
          
          });
        });
      }
  }
