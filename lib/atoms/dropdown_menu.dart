import 'package:flutter/material.dart';

class DropDown_Menu extends StatelessWidget {
  dynamic onChanged;
  List <String> item;
  String dropdownValue;

  DropDown_Menu(
      {required Function(String? value) onChanged,
      required this.item,
      required this.dropdownValue});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      style: const TextStyle(color: Colors.deepPurple),
      onChanged: (value) => onChanged,
      items: [
        DropdownMenuItem(
            child: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return Text(
              item[index],
              style: TextStyle(),
            );
          },
        )),
      ],
    );
  }
}
