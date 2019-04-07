import "package:flutter/material.dart";
import "package:todoapp/screens/notelist.dart";

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: NoteList(),
    );
  }
}