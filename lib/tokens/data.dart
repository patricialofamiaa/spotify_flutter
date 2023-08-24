import 'package:spotify_flutter/tokens/types.dart';
import 'package:flutter/material.dart';

List<PlayerIcons> AudioPlayerIcons = [
  PlayerIcons(
      icon: Icon(
        Icons.shuffle_rounded,
        size: 24,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.skip_previous_rounded,
        size: 24,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.pause_circle_filled_rounded,
        size: 24,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.skip_next_rounded,
        size: 24,
      ),
      color: Colors.green),
  PlayerIcons(
      icon: Icon(
        Icons.repeat_rounded,
        size: 24,
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
      OnPress: () {}),
  SideBarButtonType(
      icon: Icon(
        Icons.search_rounded,
        color: Colors.white,
        size: 32,
      ),
      label: 'Search',
      OnPress: () {}),
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
