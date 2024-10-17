
import 'package:bloclearning/models/notemodel.dart';

abstract class NotesStates{}
class NotesInitialState extends NotesStates{}
class NotesLoadingState extends NotesStates{}

class NotesLoadedState extends NotesStates{
  List<NotesModel> notemodel;
  NotesLoadedState({required this.notemodel});
}
class NotesErrorState extends NotesStates{
  String error;
  NotesErrorState({required this.error});
}