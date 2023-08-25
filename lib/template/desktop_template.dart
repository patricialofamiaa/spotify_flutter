import 'package:flutter/material.dart';
import 'package:spotify_flutter/organisms/side_bar.dart';
import 'package:spotify_flutter/pages/screens/center_screen.dart';

class DesktopTemplate extends StatelessWidget {
  const DesktopTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(children: [
          Expanded(child: SideBar()),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child: CenterScreen(),
            ),
          )
        ]),
      ),
    );
  }
}