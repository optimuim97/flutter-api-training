import 'package:flutter/material.dart';

class NoteDelete extends StatelessWidget {
  const NoteDelete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Delete Note'),
      content: Text('Are you sure that you want to delete ?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text('Yes')),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text('No'))
      ],
    );
  }
}
