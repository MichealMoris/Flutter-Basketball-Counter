import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: const CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Points Counter'),
              foregroundColor: Colors.white,
            ),
            body: Padding(
              padding: const EdgeInsets.all(40),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Team A',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamA
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 100,
                                  )),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamAIncrement(1);
                                },
                                child: const Text('Add 1 Point'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamAIncrement(2);
                                },
                                child: const Text('Add 2 Point'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamAIncrement(3);
                                },
                                child: const Text('Add 3 Point'),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            thickness: 1.5,
                            color: Color.fromARGB(78, 46, 46, 46),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Team B',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamB
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 100,
                                  )),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamBIncrement(1);
                                },
                                child: const Text('Add 1 Point'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamBIncrement(2);
                                },
                                child: const Text('Add 2 Point'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .teamBIncrement(3);
                                },
                                child: const Text('Add 3 Point'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                          top: 15,
                          bottom: 15,
                        ),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).reset();
                      },
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
