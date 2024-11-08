import 'package:flutter/material.dart';
import 'package:anime_app/screens/home_screen.dart';

void main() {
  runApp(AnimeApp());
}

class AnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
      ),
      home: HomeScreen(),
    );
  }
}
