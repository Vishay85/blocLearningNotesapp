
import 'package:bloclearning/repository/screens/adddatascreen.dart';
import 'package:bloclearning/repository/screens/blocs/notesbloc.dart';
import 'package:bloclearning/repository/screens/blocs/notesstates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes App"),
        centerTitle: true,
      ),
      body: BlocBuilder<NotesBloc, NotesStates>(builder: (context, state){
        if(state is NotesLoadingState){
          return const Center(child: CircularProgressIndicator(),);
        }else if(state is NotesLoadedState){
          return ListView.builder(itemBuilder: (context, index){
            return ListTile(
              leading: Text("${index + 1}"),
              title: Text(state.notemodel[index].title),
              subtitle: Text(state.notemodel[index].description),
            );
          }, itemCount: state.notemodel.length,);
        }else if(state is NotesErrorState){
          return Center(child: Text(state.error.toString()));
        }
        return const Center(child: Text("No Data Added"),);
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> const AddDataScreen() ));
      }, child: const Icon(Icons.add),),
    );
  }
}
