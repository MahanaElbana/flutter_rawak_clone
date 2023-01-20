
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_rawak_clone/view/challenges/counter_bloc/bloc_events_state.dart';
import 'package:flutter_rawak_clone/view/widget/reusable_text.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(),
      child: BlocConsumer<CounterBloc, CounterStates>(
        listener: (BuildContext context, CounterStates states) {},
        builder: (BuildContext context, CounterStates states) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              centerTitle: true,
              title: const ReusableText(
                strText: "custom paint",
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // =========================== Bloc ========================//
                  const SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        heroTag: "decrement",
                          onPressed: () =>
                              CounterBloc.get(context).add(DecrementEvent()),
                          child: const Icon(Icons.remove)),
                      ReusableText(
                          strText: "${ CounterBloc.get(context).count(context)}",
                          fontSize: 25.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                      FloatingActionButton(
                         heroTag: "increment",
                          onPressed: () =>
                               CounterBloc.get(context).add(IncrementEvent()), 
                          child: const Icon(Icons.add)),
                    ],
                  ),

                  // ================ sizedBox() ================//
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

