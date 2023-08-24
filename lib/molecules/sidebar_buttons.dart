import 'package:flutter/material.dart';

class Sidebar_Button extends StatelessWidget {
  String label;
  Icon icon;
  dynamic OnPress;

  Sidebar_Button({required this.icon, required this.label, required Function() OnPress, });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(onPressed: () => OnPress,
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              
              icon,
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );      
  }
}