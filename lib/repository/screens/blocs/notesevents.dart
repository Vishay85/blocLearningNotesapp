
import 'package:bloclearning/models/notemodel.dart';

abstract class NotesEvents{}

class AddNotesEvents extends NotesEvents{
  NotesModel newnote;
  AddNotesEvents({required this.newnote});
}

class FetchNotesEvents extends NotesEvents{}
class UpdateNotesEvents extends NotesEvents{
  int id;
  String title;
  String desc;
  UpdateNotesEvents({required this.id, required this.title, required this.desc});
}



class DeleteNotesEvents extends NotesEvents{
  int id;
  DeleteNotesEvents({required this.id});
}


