import 'package:flutter/material.dart';
import 'package:note_keeper_app/screens/note_detail.dart';
import 'package:note_keeper_app/screens/note_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: NoteList(),
    );
  }
}
