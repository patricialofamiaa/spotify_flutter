import 'package:flutter/material.dart';
import 'package:spotify_flutter/pages/home_page.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: HomePage(),
    );
  }
}