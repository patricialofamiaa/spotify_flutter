import 'package:flutter/material.dart';
// import 'package:spotify_flutter/foundations/index.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopLayout;
  final Widget tabletLayout;
  
  ResponsiveLayout({ required this.desktopLayout, required this.tabletLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        if(constraints.maxWidth > 800) {
          return desktopLayout;
        } else {
          return tabletLayout;
        }
      },
    );
  }
}