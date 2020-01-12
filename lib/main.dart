import 'package:flutter/material.dart';
import 'package:notes_app/screens/note_detail.dart';
import 'package:notes_app/screens/note_list.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Keeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: NoteDetail(),
    );
  }
}

