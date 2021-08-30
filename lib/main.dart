import 'package:first_app/services/notes_service.dart';
import 'package:first_app/views/note_list.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

setuplocater() {
  GetIt.I.registerLazySingleton(() => NoteService());
}

void main() {
  setuplocater();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NoteList(),
    );
  }
}
