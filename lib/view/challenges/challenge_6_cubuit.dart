import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterStates {}

class InitialStates extends CounterStates {}

class IncrementStates extends CounterStates {}

class DecrementStates extends CounterStates {}
class ChangeDateStates extends CounterStates {}

class CounterController extends Cubit<CounterStates> {
  CounterController() : super(InitialStates());

 static CounterController get(BuildContext context) => BlocProvider.of(context);

  int counter = 1;
  increment() {
    counter++;
    emit(IncrementStates());
  }

  decrement() {
    counter--;
    emit(DecrementStates());
  }
  DateTime selectedTime =DateTime(2019);
  changeDate(DateTime date){
     selectedTime = date ;
     emit(ChangeDateStates());
  }
}
