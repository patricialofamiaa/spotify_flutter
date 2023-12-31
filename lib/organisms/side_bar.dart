import 'package:flutter/material.dart';
import 'package:spotify_flutter/molecules/index.dart';
import 'package:spotify_flutter/pages/index.dart';
import 'package:spotify_flutter/tokens/data.dart';

class SideBar extends StatelessWidget {
  SideBar({super.key});

  final _topButtons = TopSideButtons;
  final _playlists = Playlist;

  List pages = [HomePage(), SearchPage()];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: _topButtons.length,
                    itemBuilder: (context, index) {
                      return Sidebar_Button(
                        OnPress: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    _topButtons[index].OnPress,
                              ))
                        },
                        icon: _topButtons[index].icon,
                        label: _topButtons[index].label,
                      );
                    },
                  ),
                ),
              ),
              //bottom buttons
              Expanded(
                child: Column(
                  children: [
                    LibraryLabelBar(),
                    //button overfklow row

                    //serach icon, recent filter
                    Expanded(
                        child: ListView.builder(
                      itemCount: _playlists.length,
                      itemBuilder: (context, index) {
                        return LibraryCard(
                            title: _playlists[index].title,
                            label: _playlists[index].title,
                            source: _playlists[index].source,
                            src: _playlists[index].src);
                      },
                    )),
                    //bottom buttons
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
