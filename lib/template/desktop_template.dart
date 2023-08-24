import 'package:flutter/material.dart';
import 'package:spotify_flutter/organisms/side_bar.dart';

class DesktopTemplate extends StatelessWidget {
  const DesktopTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SideBar(),
    );
}
}

