import 'package:first_app/models/note_for_listing.dart';

class NoteService {
  List<NoteForListing> getNotList() {
    return [
      new NoteForListing(
          noteID: "1",
          noteTitle: "First Title",
          noteCreatedDate: DateTime.now(),
          lastEdidedCreatedDate: DateTime.now()),
      new NoteForListing(
          noteID: "2",
          noteTitle: "Second",
          noteCreatedDate: DateTime.now(),
          lastEdidedCreatedDate: DateTime.now()),
      new NoteForListing(
          noteID: "3",
          noteTitle: "Tree",
          noteCreatedDate: DateTime.now(),
          lastEdidedCreatedDate: DateTime.now()),
      new NoteForListing(
          noteID: "4",
          noteTitle: "Four",
          noteCreatedDate: DateTime.now(),
          lastEdidedCreatedDate: DateTime.now()),
    ];
  }
}
