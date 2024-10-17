
import 'package:bloclearning/bloc/counterbloc.dart';
import 'package:bloclearning/bloc/counterevent.dart';
import 'package:bloclearning/bloc/counterstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state){
        return Center(
            child: Text(state.count.toString()),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        BlocProvider.of<CounterBloc>(context).add(IncreamentEvent());
      }, child: const Icon(Icons.add),),
    );
  }
}
