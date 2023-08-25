import 'package:spotify_flutter/pages/index.dart';
import 'package:spotify_flutter/tokens/types.dart';
import 'package:flutter/material.dart';

List<PlayerIcons> AudioPlayerIcons = [
  PlayerIcons(
      icon: Icon(
        Icons.shuffle_rounded,
        size: 32,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.skip_previous_rounded,
        size: 32,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.pause_circle_filled_rounded,
        size: 32,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.skip_next_rounded,
        size: 32,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.repeat_rounded,
        size: 32,
      ),
      color: Colors.green),
];

List<SideBarButtonType> TopSideButtons = [
  SideBarButtonType(
      icon: Icon(
        Icons.home_rounded,
        color: Colors.white,
        size: 32,
      ),
      label: 'Home',
      OnPress: () {
        HomePage();
      }),
  SideBarButtonType(
      icon: Icon(
        Icons.search_rounded,
        color: Colors.white,
        size: 32,
      ),
      label: 'Search',
      OnPress: () {
        SearchPage();
      }),
];

List<PlaylistType> Playlist = [
  PlaylistType(
      title: "Liked Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Ariana Grande", source: 'Artist', src: "lib/images/hat.jpg"),
  PlaylistType(
      title: "Olivia Rodrigo", source: 'Artist', src: "lib/images/cute.jpg"),
  PlaylistType(
      title: "Ballet Classics",
      source: 'Playlist',
      src: "lib/images/anime.jpg"),
  PlaylistType(
      title: "Sad Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Liked Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Liked Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Ariana Grande", source: 'Artist', src: "lib/images/hat.jpg"),
  PlaylistType(
      title: "Olivia Rodrigo", source: 'Artist', src: "lib/images/cute.jpg"),
  PlaylistType(
      title: "Ballet Classics",
      source: 'Playlist',
      src: "lib/images/anime.jpg"),
  PlaylistType(
      title: "Sad Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Liked Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Liked Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Ariana Grande", source: 'Artist', src: "lib/images/hat.jpg"),
  PlaylistType(
      title: "Olivia Rodrigo", source: 'Artist', src: "lib/images/cute.jpg"),
  PlaylistType(
      title: "Ballet Classics",
      source: 'Playlist',
      src: "lib/images/anime.jpg"),
  PlaylistType(
      title: "Sad Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
  PlaylistType(
      title: "Liked Songs", source: 'Playlist', src: "lib/images/yellow.jpg"),
];

List<String> DropdownMenuList = <String>[
  "Create new playlist",
  "Create playlist folder",
];

List<AlbumType> Albums = [
  AlbumType(
    album_cover: "lib/images/wannabelike.jpg",
    description: "The happiest to boost your day.",
    title: "Good Times",
  ),
  AlbumType(
    album_cover: "lib/images/wannabelike.jpg",
    description: "Turn that frown upside down.",
    title: "Positive Vibes",
  ),
  AlbumType(
    album_cover: "lib/images/wannabelike.jpg",
    description: "You're on top of the world",
    title: "Confidence Boost",
  ),
  AlbumType(
    album_cover: "lib/images/wannabelike.jpg",
    description: "Hits to boost your mood.",
    title: "Happy Hits",
  ),
];

List <AlbumType> Episodes = [
  AlbumType(
    album_cover: "lib/images/podcast1.jpg",
    description: "Master yourself thoughts",
    title: "Mental Health",
  ),
   AlbumType(
    album_cover: "lib/images/podcast2.jpg",
    description: "Be free.",
    title: "Find a way out",
  ),
   AlbumType(
    album_cover: "lib/images/podcast1.jpg",
    description: "Chillin like a villain",
    title: "Chill Pod",
  ),
   AlbumType(
    album_cover: "lib/images/car.jpg",
    description: "Enjoy the free ride",
    title: "Maneuver life",
  ),
];

List <AlbumType> Workout = [
  AlbumType(
    album_cover: "lib/images/podcast1.jpg",
    description: "Master yourself thoughts",
    title: "Mental Health",
  ),
   AlbumType(
    album_cover: "lib/images/wannabelike.jpg",
    description: "Be free.",
    title: "Find a way out",
  ),
   AlbumType(
    album_cover: "lib/images/car.jpg",
    description: "Chillin like a villain",
    title: "Chill Pod",
  ),
   AlbumType(
    album_cover: "lib/images/car.jpg",
    description: "Enjoy the free ride",
    title: "Maneuver life",
  ),
];