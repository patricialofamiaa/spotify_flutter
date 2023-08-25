import 'package:flutter/material.dart';
import 'package:spotify_flutter/pages/home_page.dart';
import 'package:spotify_flutter/pages/screens/show_all_albums.dart';

class LeadingIcons extends StatelessWidget {
 
 LeadingIcons({Key ? key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder:(context) => HomePage(),),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration:
                  BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => AlbumScreen()),           
                );
              } ,
              child: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.black26, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
