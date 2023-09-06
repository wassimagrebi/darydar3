import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class about_us_page extends StatefulWidget {
  const about_us_page({super.key});

  @override
  State<about_us_page> createState() => _about_us_pageState();
}

class _about_us_pageState extends State<about_us_page> {
  final videoURL = "https://www.youtube.com/watch?v=ej5Htnhiyy8";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags:
      const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('À propos'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        YoutubePlayer(
                          controller: _controller,
                          showVideoProgressIndicator: true,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Notre équipe',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 74, 215, 209),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Image(image:AssetImage('assets/equipedarydar.png') ,),
                        SizedBox(height: 10),
                        Text(
                          "L'équipe DaryDar est formée par une équipe\nmultidisplinaire dans trois départements :\nTechnique, Marketing et Informatique.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        ),


                        SizedBox(height: 20),
                        Text(
                          'Nos objectifs',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 254, 74, 73),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Image(image:AssetImage('assets/objectif.png') ,),
                        SizedBox(height: 10),
                        Text(
                          "DaryDar vise à vous faciliter l'accès et la gestion\ndes services de dépannage et d'installation chez\nvous ou pour vos entrprises",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
