import 'package:flutter/material.dart';
import 'package:spotify_flutter/atoms/index.dart';

class LibraryLabelBar extends StatelessWidget {
  const LibraryLabelBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  8.0, bottom: 8.0),
      child: Container(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Image.asset(
                          'lib/images/stack_library.jpg',
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Your Library',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Expanded(
                        child: Row(
                          children: [
                            Icon_Button(
                                icon: Icon(Icons.add),
                                icon_color: Colors.white,
                                icon_highlighted: Colors.green.shade400,
                                OnPress: () {}),
                            Icon_Button(
                                icon: Icon(Icons.arrow_forward),
                                icon_color: Colors.white,
                                icon_highlighted: Colors.green.shade400,
                                OnPress: () {
                                }),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
