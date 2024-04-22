import 'package:flutter/material.dart';
import 'package:shopping_mart/consts/consts.dart';

Widget ourButton({onpress, color, textcolor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: blue, padding: const EdgeInsets.all(12)),
      onPressed: onpress,
      child: title!.text.color(textcolor).fontFamily(bold).make());
}
