import 'package:create_youtube/src/models/video_card.dart';
import 'package:create_youtube/src/widgets/bottom_menu_youtube.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  static String id = "main_page";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<VideoCard> videos = [];  

  @override
  void initState() {
    videos.addAll([
      VideoCard(duration: "6:30", title: "Miniatura de mi juego para Youtube", 
      views: "12798361975", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "3:45", title: "Miniatura de mi juego para Youtube", 
      views: "10045", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "2:25", title: "Miniatura de mi juego para Youtube", 
      views: "100", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "1:10", title: "Miniatura de mi juego para Youtube", 
      views: "134", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "6:45", title: "Miniatura de mi juego para Youtube", 
      views: "90", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "45:45", title: "Miniatura de mi juego para Youtube", 
      views: "67593", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "8:45", title: "Miniatura de mi juego para Youtube", 
      views: "109830917", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "7:45", title: "Miniatura de mi juego para Youtube", 
      views: "8382", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "5:45", title: "Miniatura de mi juego para Youtube", 
      views: "3916912", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "9:45", title: "Miniatura de mi juego para Youtube", 
      views: "322179", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "9:45", title: "Miniatura de mi juego para Youtube", 
      views: "322179", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
      VideoCard(duration: "9:45", title: "Miniatura de mi juego para Youtube", 
      views: "322179", nameChannel: "DanielZusaVideogames", 
      thumbnail: Image.asset("assets/image/fondo_flutter.png")),
    ]);

    super.initState();
  }

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
                  String viewsCompressed = videos[position].viewsVideo(int.parse(videos[position].views));
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
                                Expanded(
                                  child: Text(
                                    "${videos[position].title}",
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
                              height: 8,
                            ),



                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                ),
                                Text("DanielZusa - " + "$viewsCompressed" + " Visitas - Hace 5 dia")

                              ],
                            ),
                            
                          ]
                        ),
                        Positioned(
                          right: 5,
                          bottom: 85,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                childCount: videos.length,
              ))
            ],
          ),
          bottomNavigationBar: BotomMenuYoutube(),
        ),
      ),
    );
  }
}
