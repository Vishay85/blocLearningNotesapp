
import 'package:bloclearning/database/dbhelper.dart';
import 'package:bloclearning/repository/screens/blocs/notesevents.dart';
import 'package:bloclearning/repository/screens/blocs/notesstates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesBloc extends Bloc<NotesEvents, NotesStates>{
  DbHelper dbHelper;
  NotesBloc({required this.dbHelper}):super(NotesInitialState()){
    on<AddNotesEvents>((event, emit) async{
      emit(NotesLoadingState());
      bool check = await dbHelper.addNotes(event.newnote);
      var arrnotes = await dbHelper.fetchNotes();
      emit(NotesLoadedState(notemodel: arrnotes));
    });
  }
}