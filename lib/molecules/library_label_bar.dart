import 'package:flutter/material.dart';
import 'package:spotify_flutter/foundations/device_dimensions.dart';

class LibraryLabelBar extends StatefulWidget {
  LibraryLabelBar({super.key});

  List<String> DropdownMenuList = <String>[
    "Create new playlist",
    "Create playlist folder",
  ];

  @override
  State<LibraryLabelBar> createState() => _LibraryLabelBarState();
}

class _LibraryLabelBarState extends State<LibraryLabelBar> {
  @override
  Widget build(BuildContext context) {
    final currentWidthScreen = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
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
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Expanded(
                    child: currentWidthScreen < lg ? 
                    TextButton.icon(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            label: Text(""),
                            onPressed: () {})
                    : Row(
                      children: [
                        TextButton.icon(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            label: Text(""),
                            onPressed: () {}),
                        TextButton.icon(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            label: Text(""),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
