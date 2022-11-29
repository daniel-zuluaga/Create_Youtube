import 'package:create_youtube/src/pages/create_new_video_youtube.dart';
import 'package:create_youtube/src/pages/main_page.dart';
import 'package:create_youtube/src/pages/shorts_video.dart';
import 'package:create_youtube/src/pages/suscripciones_page.dart';
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
            Icons.video_collection_outlined, 
            size: 30,
          ),
          label: "Explorar",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline_rounded,
            size: 40,
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
            Icons.library_add_outlined,
            size: 30
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
              //Navigator.pushNamed(context, PrincipalPage.id);
              Navigator.pushReplacementNamed(context, MainPage.id);
              break;
            case 1:
              //Navigator.pushNamed(context, ExplorePage.id);
              Navigator.pushReplacementNamed(context, ShortsVideo.id);
              break;
            case 2:
              MaterialPage(
                    child: Container(
                  color: Colors.red,
                  height: 200.0,
                  width: 200.0,
                ));
              break;

            case 3:
              Navigator.pushReplacementNamed(context, SuscripcionesPage.id);
              break;
            
            default:
              
          }
        });
      },
    );
  }
}