import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  String image_src;
  ImageBanner({required this.image_src});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
       borderRadius: BorderRadius.circular(15),
          child: Image.asset(image_src, 
          fit: BoxFit.cover,
          ),
        ),
    );
  }
}