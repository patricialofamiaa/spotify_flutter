import 'package:flutter/material.dart';
import 'package:spotify_flutter/foundations/index.dart';
import 'package:spotify_flutter/molecules/index.dart';

class FeaturedLibrary extends StatelessWidget {
  const FeaturedLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidthScreen = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 20.0),
      child: SizedBox(
        height: currentWidthScreen < lg ? 300 : 200,
        child: Expanded(
            child: currentWidthScreen < lg
                ? Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          FeaturedCard(
                              label: "This is Taylor Swift",
                              src: 'lib/images/hat.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "This is Olivia Rodrigo",
                              src: 'lib/images/anime.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "This is Taylor Swift",
                              src: 'lib/images/hat.jpg',
                              onPressed: (value) {}),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          FeaturedCard(
                              label: "This is Sabrina",
                              src: 'lib/images/yellow.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "This is Spotify",
                              src: 'lib/images/wannabelike.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "Podcasts",
                              src: 'lib/images/wannabelike.jpg',
                              onPressed: (value) {})
                        ],
                      )),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          FeaturedCard(
                              label: "This is Taylor Swift",
                              src: 'lib/images/hat.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "This is Olivia Rodrigo",
                              src: 'lib/images/anime.jpg',
                              onPressed: (value) {})
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          FeaturedCard(
                              label: "This is 5SOS",
                              src: 'lib/images/cute.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "This is Sabrina",
                              src: 'lib/images/yellow.jpg',
                              onPressed: (value) {})
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          FeaturedCard(
                              label: "This is Spotify",
                              src: 'lib/images/wannabelike.jpg',
                              onPressed: (value) {}),
                          FeaturedCard(
                              label: "Podcasts",
                              src: 'lib/images/wannabelike.jpg',
                              onPressed: (value) {})
                        ],
                      ))
                    ],
                  )),
      ),
    );
  }
}
