import 'package:blocs_demo_example/counter/blocs/counter_event.dart';
import 'package:blocs_demo_example/counter/blocs/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
   CounterBloc():super(InitialState()){
    on<Increement>((event, emit){
      emit(CounterStates(counter: state.counter+1));
    });

    on<Decreement>((event, emit){
      emit(CounterStates(counter:state.counter-1));
    });
  }

}
 
