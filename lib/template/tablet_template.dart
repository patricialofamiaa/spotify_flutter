import 'package:flutter/material.dart';
import 'package:spotify_flutter/template/tablet_homepage.dart';

import '../organisms/index.dart';

class TabletTemplate extends StatelessWidget {
  const TabletTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: SafeArea(
        child: Row(children: [
          Expanded(flex:1, child: SideBar()),
          Expanded(
            flex:2,
            child: Container(
              color: Colors.black,
              child: TabletHomePage(),
            ),
          )
        ]),
      ),
    );
  }
}