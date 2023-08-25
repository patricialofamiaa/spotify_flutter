import 'package:flutter/material.dart';

class PlayerIcons {
  Icon icon;
  Color color;

  PlayerIcons({ required this.icon , required this.color});
}

class SideBarButtonType {
 String label;
  Icon icon;
  dynamic OnPress;

  SideBarButtonType({required this.icon, required this.label, required Null Function() OnPress});
}

class PlaylistType {
  String title;
  String? label;
  String source;
  String src;

  PlaylistType({required this.title, required this.source, required this.src, this.label});
}

class DropDownType {
  String label;

  DropDownType({ required this.label});
}

class AlbumType {
  String title;
  String description;
  String album_cover;

  AlbumType({ required this.title, required this.album_cover, required this.description });
}