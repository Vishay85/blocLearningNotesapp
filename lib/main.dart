import 'package:bloclearning/bloc/counterbloc.dart';
import 'package:bloclearning/database/dbhelper.dart';
import 'package:bloclearning/repository/screens/blocs/notesbloc.dart';
import 'package:bloclearning/repository/screens/notesapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> CounterBloc()),
        BlocProvider(create: (_)=> NotesBloc(dbHelper: DbHelper.db)),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const NotesApp(),
      ),
    );
  }
}


