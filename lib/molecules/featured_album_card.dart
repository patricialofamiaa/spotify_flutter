import 'package:flutter/material.dart';

class AlbumCard extends StatefulWidget {
  String title;
  String description;
  String album_cover;

 AlbumCard({required this.title, required this.album_cover, required this.description, required Function() onPress,});

  @override
  State<AlbumCard> createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {

  dynamic onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPress,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.grey.shade200.withOpacity(.15),
          height: 330,
          width: 250,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            color: Colors.cyan.shade300,
                            child: Image.asset(widget.album_cover, fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset("lib/images/icon_spotify.jpg"),
                          
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(widget.description,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 13,
                    fontWeight: FontWeight.normal
                  ),
                  ),
                ),
              )
    
            ],
          ),
        ),
      ),
    );
  }
}