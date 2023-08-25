import 'package:flutter/material.dart';
import 'package:spotify_flutter/pages/screens/show_all_albums.dart';

class MoodBlock extends StatelessWidget {
  String title;
  dynamic list;
  dynamic grid;

  MoodBlock({required this.title, required this.list, required this.grid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 40.0, bottom: 10.0, right: 30.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlbumScreen(child: grid),
                        ),
                      );
                    },
                    child: Text(
                      "Show all",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //cards
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 32.0),
            child: SizedBox(
              height: 300,
              child: list,
            ),
          ),
        ],
      ),
    );
  }
}
