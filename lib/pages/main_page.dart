import 'package:create_youtube/widgets/bottom_menu_youtube.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  static String id = "main_page";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          primary: true,
          slivers: [
            SliverAppBar(
              title: Row(
                children: [
                  Image.asset(
                    'assets/image/youtubelogo.png',
                    height: 50.0,
                    width: 50.0,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Youtube"),
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cast_rounded,
                      size: 30,
                    )),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(FontAwesomeIcons.bell)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded,
                      size: 30,
                    )),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: const CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage:
                        AssetImage("assets/image/fondo_flutter.png"),
                    radius: 15,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int position) {
                return Container(
                  child: Text("Imagenes de Flutter !!!! :)"),
                );
              },
              childCount: 10,
            ))
          ],
        ),
        bottomNavigationBar: BotomMenuYoutube(),
      ),
    );
  }
}
