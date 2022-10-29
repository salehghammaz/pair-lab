import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Read extends StatelessWidget {
  Read({super.key, required this.color, required this.mood});
  final String color;
  final String mood;
  Color red = Colors.red;
  Color blue = Colors.blue;
  Color green = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mood")),
      body: Container(
        color: color == "red"
            ? red
            : color == "blue"
                ? blue
                : green,
        child: Center(
            child: Card(
          child: ListTile(
            title: Text("You are " + mood),
            subtitle: Text(FirebaseAuth.instance.currentUser!.email.toString()),
          ),
        )),
      ),
    );
  }
}
