import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  // const NotModify({Key? key}) : super(key: key);

  final String noteID;

  bool get isEditing => noteID != '';

  NoteModify({required this.noteID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? 'Modify Note' : 'Create Note')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Note Tittle'),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Note Content'),
            ),
            SizedBox(
              height: 4,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  if (isEditing) {
                  } else {}

                  Navigator.of(context).pop();
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                // color: Colors.blue
              ),
            )
          ],
        ),
      ),
    );
  }
}
