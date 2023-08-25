import 'package:flutter/material.dart';
import 'package:spotify_flutter/molecules/index.dart';
import 'package:spotify_flutter/organisms/index.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        leading: LeadingIcons(
          onTapBack: () {
            Navigator.pop(context);
          },
          onTapForward: () {},
        ),
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
      ),
    );
  }
}
