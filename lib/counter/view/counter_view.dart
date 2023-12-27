import 'package:blocs_demo_example/counter/blocs/counter_bloc.dart';
import 'package:blocs_demo_example/counter/blocs/counter_event.dart';
import 'package:blocs_demo_example/counter/blocs/counter_state.dart';
import 'package:blocs_demo_example/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, CounterStates>(
          builder: (context, state) {
            return Text(state.counter.toString(), style: textTheme.displayMedium);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed:  ()=>BlocProvider.of<CounterBloc>(context).add(Increement()),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
             onPressed:           
              ()=>BlocProvider.of<CounterBloc>(context).add(Decreement()),

          ),
        ],
      ),
    );
  }
}