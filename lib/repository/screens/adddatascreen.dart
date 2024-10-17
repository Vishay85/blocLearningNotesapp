import 'dart:developer';

import 'package:bloclearning/models/notemodel.dart';
import 'package:bloclearning/repository/screens/blocs/notesbloc.dart';
import 'package:bloclearning/repository/screens/blocs/notesevents.dart';
import 'package:bloclearning/widgets/UiHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          UiHelper.CustomTextField(titleController, "Enter Title", Icons.title),
          UiHelper.CustomTextField(descController, "Enter Description", Icons.description),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            addData(titleController.text.toString(), descController.text.toString(), context);
          }, child: const Text("Save"))

        ],
      ),
    );
  }
  addData(String title, String desc, BuildContext context){
    if(title == "" || desc == ""){
      return log("Enter Title and Description");
    }else{
      BlocProvider.of<NotesBloc>(context).add(AddNotesEvents(newnote: NotesModel(title: title, description: desc)));
    }
  }
}
