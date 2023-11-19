
import 'package:basketball/cubit/CounterCubit.dart';
import 'package:basketball/cubit/StateCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  int teamA = 0;
  int teamB=0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit , CounterState>(
      builder: (context , state){
        return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                       Text(
                        '${BlocProvider.of<CounterCubit>(context).counterA}',
                        style: TextStyle(
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).incrementA(1);

                        },
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {

                          BlocProvider.of<CounterCubit>(context).incrementA(2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {

                          BlocProvider.of<CounterCubit>(context).incrementA(3);
                        },
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 420,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [

                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                       Text(
                        '${BlocProvider.of<CounterCubit>(context).counterB}',
                        style: TextStyle(
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).incrementB(1);
                        },
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).incrementB(2);
                        },
                        child: const Text(
                          'Add 2 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).incrementB(3);
                        },
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],

                  )
                ],
              ),

              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).incrementA(1);
                  BlocProvider.of<CounterCubit>(context).incrementB(1);
                },
                child: const Text(
                  'Add 1 Point ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),

            ],
          ),
        );
      },

listener: (context , state){

        if(state is CounterAstate){
          teamA = BlocProvider.of<CounterCubit>(context).counterA;
        }else{
          teamB = BlocProvider.of<CounterCubit>(context).counterB;
        }
},
    );
  }
}
