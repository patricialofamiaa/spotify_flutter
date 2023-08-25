import 'package:flutter/material.dart';
import 'package:spotify_flutter/molecules/featured_album_card.dart';
import 'package:spotify_flutter/molecules/index.dart';
import 'package:spotify_flutter/molecules/mood_block.dart';
import 'package:spotify_flutter/organisms/index.dart';
import 'package:spotify_flutter/tokens/data.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _album = Albums;
  final _episode = Episodes;
  final _workout = Workout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 140,
          leading: LeadingIcons(),
          actions: [
            InkWell(
              customBorder: const CircleBorder(),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.black26, shape: BoxShape.circle),
                child: Icon(
                  Icons.notifications,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: Icon(
                    Icons.people_alt_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 30.0),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: Icon(Icons.person)),
              ),
            ),
          ]),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey.shade700, Colors.black],
            stops: const [0, 0.3],
          )),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, bottom: 10.0, left: 35.0),
                      child: Text(
                        "Good afternoon",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  //featured cards
                  FeaturedLibrary(),
                  MoodBlock(title: "Happy", 
                  list: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _album.length,
                          itemBuilder: (context, index) {
                            return AlbumCard(
                                title: _album[index].title,
                                album_cover: _album[index].album_cover,
                                description: _album[index].description,
                                onPress: () {});
                          },
                        ),
                      ),
                  ),
                  MoodBlock(title: "Episodes for you",
                    list: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _episode.length,
                          itemBuilder: (context, index) {
                            return AlbumCard(
                                title: _episode[index].title,
                                album_cover: _episode[index].album_cover,
                                description: _episode[index].description,
                                onPress: () {});
                          },
                        ),
                      ),
                  ),

                  MoodBlock(title: "Based on your recent listening",
                    list: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _workout.length,
                          itemBuilder: (context, index) {
                            return AlbumCard(
                                title: _workout[index].title,
                                album_cover: _workout[index].album_cover,
                                description: _workout[index].description,
                                onPress: () {});
                          },
                        ),
                      ),
                  ),
                  
                ],
              ),
            ),
          )),
    );
  }
}
