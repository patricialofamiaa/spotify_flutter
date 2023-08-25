import 'package:flutter/material.dart';
import 'package:spotify_flutter/atoms/index.dart';
import 'package:spotify_flutter/template/index.dart';
import 'package:spotify_flutter/tokens/data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final _icons = AudioPlayerIcons;
    bool isSelected = false;

    void _setSelected() {
      isSelected == false
          ? setState(() {
              isSelected = true;
            })
          : setState(() {
              isSelected = false;
            });
    }

    return Scaffold(
      body: ResponsiveLayout(
        desktopLayout: DesktopTemplate(),
        tabletLayout: TabletTemplate(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 400,
              alignment: Alignment.centerRight,
              child: Expanded(
                  child: ListView.builder(
                itemCount: _icons.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Icon_Button(
                    icon_color: _icons[index].color,
                    icon_highlighted: Colors.grey.shade400,
                    isSelected: isSelected,
                    icon: _icons[index].icon,
                    OnPress: _setSelected,
                  );
                },
              )),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Row(
                children: [
                  Icon_Button(
                      icon: Icon(Icons.mic_external_on_outlined),
                      icon_color: Colors.grey.shade600,
                      OnPress: () {}),
                  Icon_Button(
                      icon: Icon(Icons.speaker),
                      icon_color: Colors.grey.shade600,
                      OnPress: () {}),
                  Icon_Button(
                      icon: Icon(Icons.queue_music),
                      icon_color: Colors.grey.shade600,
                      OnPress: () {}),
                  Icon_Button(
                      icon: Icon(Icons.volume_up),
                      icon_color: Colors.grey.shade600,
                      OnPress: () {}),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
