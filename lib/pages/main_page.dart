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
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
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
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.add_alert_outlined, 
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        size: 35,
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
                    margin: EdgeInsets.all(8),
                    child: Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [ 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/image/fondo_flutter.png"),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    backgroundImage:
                                        AssetImage("assets/image/fondo_flutter.png"),
                                    radius: 25.0,
                                  ),
                                  onTap: () {},
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Expanded(
                                  child: Text(
                                    "Miniatura de mi juego para Youtube",
                                    maxLines: 2,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                    )
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {}, 
                                  icon: const Icon(
                                    Icons.more_vert, size: 25, color: Colors.white,
                                  )
                                ),

                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),



                            Row(
                              children: const [
                                SizedBox(
                                  width: 70,
                                ),
                                Text("DanielZusa"),
                                Text("1M Visitas"),
                                Text("Hace 5 dia")

                              ],
                            ),
                            
                          ]
                        ),
                        Positioned(
                          right: 5,
                          bottom: 80,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            color: Colors.black87,
                            child: const Text(
                              "8:40",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              ),
                          ),
                        ),
                      ]
                    ),
                  );
                },
                childCount: 10,
              ))
            ],
          ),
          bottomNavigationBar: BotomMenuYoutube(),
        ),
      ),
    );
  }
}
