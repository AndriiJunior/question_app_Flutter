import 'package:flutter/material.dart';
import './pages/game_page.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question App',
      theme: ThemeData(
        fontFamily: "Schyler",
        scaffoldBackgroundColor: Color.fromARGB(31, 31, 31, 1),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      //GamePage(),
    );
  }
}
