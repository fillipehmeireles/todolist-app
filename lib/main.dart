import 'package:flutter/material.dart';
import 'package:todoapp/appstyle/color_palette.dart';
import 'package:todoapp/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: AppColorPallete.creamWhite),
      home: const Home(),
    );
  }
}
