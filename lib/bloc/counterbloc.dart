
import 'package:bloclearning/bloc/counterevent.dart';
import 'package:bloclearning/bloc/counterstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// class create extends kiya bloc  jisme ki counter events agye or counter state agye
class CounterBloc extends Bloc<CounterEvents, CounterState> {
  // counter bloc ka ek constructor kiya jisme ki app jab bhi start ho t 0 se start ho
  CounterBloc() : super(CounterState(count: 0)) {

    // jese hi increment function on  ho to count ki value 1 + ho jaye
    on<IncreamentEvent>((event, emit){
      emit(CounterState(count: state.count + 1));
    });

    on<DecrementEvent>((event, emit){
      emit(CounterState(count: state.count - 1));
    });
  }


}