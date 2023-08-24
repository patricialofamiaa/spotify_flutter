import 'package:flutter/material.dart';


class Icon_Button extends StatelessWidget {
  Icon icon;
  dynamic onPress;
  Color?  icon_color;
  Color? icon_highlighted;
  bool? isSelected;
  String? label;

 Icon_Button({
  required this.icon, 
  required this.icon_color, 
   this.icon_highlighted,
   this.isSelected,
  required Function() OnPress, 
  this.label,
  });

  @override
  Widget build(BuildContext context) {
    

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          isSelected: isSelected,
          icon: icon,
          color: icon_color,
          highlightColor: icon_highlighted ,
          onPressed: () => onPress,
        ),
      );
  }
}