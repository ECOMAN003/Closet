import 'package:flutter/material.dart';
import 'package:closet/utils/colors.dart';

AppBar displayAppBar({
  required String? appBarText,
  IconButton? navIcon,
}) {
  return AppBar(
    backgroundColor: mainColor,
    title: Text(
      '$appBarText',
      // ignore: prefer_const_constructors
      style: TextStyle(
        color: accentColor,
        fontFamily: 'Pacifico',
        fontWeight: FontWeight.bold,
      ),
    ),
    actions:  [
      Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(right: 10.0),
        child: navIcon,
      ),
    ],
  );
}
