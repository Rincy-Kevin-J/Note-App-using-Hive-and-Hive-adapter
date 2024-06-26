import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/screens/splashpage.dart';
import 'model/note.dart';

Future<void> main() async {
  Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>("my_notes");
  runApp(MyHive());
}

class MyHive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashPage(),debugShowCheckedModeBanner: false,
    );
  }

}