// @dart=2.9

import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/navbar.dart';

void main() {
  runApp(MaterialApp(
    title: 'Virtual Tour Museum',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      fontFamily: "Cera Round Pro",
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: kBodyTextColor),
      ),
    ),
    home: const Navbar(),
  ));
}
