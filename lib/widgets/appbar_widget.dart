import 'package:flutter/material.dart';

AppBar appBarWidget() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 250, 248, 245),
    title: Text(
      "It's Fun Time!",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Memindahkan TextStyle ke dalam widget Text
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {},
      ),
      IconButton(
        icon: CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.png"),
        ),
        onPressed: () {},
      ),
    ],
  );
}