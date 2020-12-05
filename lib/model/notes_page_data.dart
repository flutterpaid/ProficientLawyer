import 'package:flutter/cupertino.dart';

import 'notes_page_model.dart';

class NotesData with ChangeNotifier {
  List<NotesModel> details = [
    NotesModel(name: "Note", content: "This app is amazing", date: "Jan 4"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jan 1"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jan 2"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jan 18"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jun 10"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jan 2"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jan 18"),
    NotesModel(name: "Note", content: "This app is amazing", date: "Jun 10"),
  ];

  int getLength() {
    return details.length;
  }
}
