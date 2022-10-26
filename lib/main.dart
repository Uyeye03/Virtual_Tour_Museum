import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/ui/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Virtual Tour Museum',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}
