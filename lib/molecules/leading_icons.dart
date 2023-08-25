import 'package:flutter/material.dart';

class LeadingIcons extends StatelessWidget {
  dynamic onTapBack;
  dynamic onTapForward;
 LeadingIcons({required Function() onTapBack, required Function() onTapForward });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: () => onTapBack,
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration:
                  BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () => onTapForward,
              child: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.black26, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
