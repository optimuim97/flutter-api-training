import 'package:first_app/models/note_for_listing.dart';
import 'package:first_app/services/notes_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import './note_modify.dart';
import 'note_delete.dart';

class NoteList extends StatefulWidget {
  // const NoteList({Key? key}) : super(key: key);

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  String formateDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  NoteService get service => GetIt.I<NoteService>();
  List<NoteForListing> notes = [];

  @override
  void initState() {
    notes = NoteService().getNotList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => NoteModify(
                    noteID: '',
                  )));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Note List'),
      ),
      body: ListView.separated(
          itemBuilder: (_, index) {
            return Dismissible(
              key: ValueKey(notes[index].noteID),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {},
              confirmDismiss: (direction) async {
                final result = await showDialog(
                    context: context, builder: (_) => NoteDelete());
                return result;
              },
              background: Container(
                color: Colors.red[400],
                padding: EdgeInsets.all(20.0),
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
              child: ListTile(
                title: Text('${notes[index].noteTitle}'),
                subtitle: Text(
                    'Last edited date ${formateDateTime(notes[index].lastEdidedCreatedDate)}'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => NoteModify(
                            noteID: '${notes[index].noteID}',
                          )));
                },
              ),
            );
          },
          separatorBuilder: (_, __) => Divider(),
          itemCount: notes.length),
    );
  }
}
