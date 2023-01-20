import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int _count = 0;

  CounterBloc() : super(InitialState()) {
    on<CounterEvents>(
      (event, emit) {
        if (event is IncrementEvent) {
          _count++;
          emit(SuccessCounterStates());
        } else if (event is DecrementEvent) {
          _count--;
          emit(SuccessCounterStates());
        }
      },
    );
  }

  static CounterBloc get(BuildContext context) =>
      BlocProvider.of<CounterBloc>(context);

  int count(BuildContext context) => context.watch<CounterBloc>()._count;
  
}

// =================== states =======================//
abstract class CounterStates {}

class InitialState extends CounterStates {}

class SuccessCounterStates extends CounterStates {}

// =================== Events =======================//

abstract class CounterEvents {}

class IncrementEvent extends CounterEvents {}

class DecrementEvent extends CounterEvents {}
