import 'package:flutter/material.dart';
import 'package:spotify_flutter/molecules/index.dart';

class AlbumScreen extends StatelessWidget {
  dynamic? child;

  AlbumScreen({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        leading: LeadingIcons(),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey.shade700, Colors.black],
            stops: const [0, 0.3],
          )),
          child: child,
      ),
    );
  }
}
