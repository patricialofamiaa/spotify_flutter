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

  SideBarButtonType({required this.icon, required this.label, required Function() OnPress});
}

class PlaylistType {
  String title;
  String? label;
  String source;
  String src;

  PlaylistType({required this.title, required this.source, required this.src, this.label});
}