import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'componts/button_increment.dart';
import 'cubit/points_counter_cubit.dart';

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PointsCounterCubit(),
      child: BlocBuilder<PointsCounterCubit, PointsCounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team E',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${context.read<PointsCounterCubit>().incrmentA}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          CustomButtonIncerment(
                              onPressed: () {
                                context
                                    .read<PointsCounterCubit>()
                                    .teamIncrement(PointsCatogryStstus.A, 1);
                              },
                              title: "Add 1 Point"),
                          CustomButtonIncerment(
                              onPressed: () {
                                context
                                    .read<PointsCounterCubit>()
                                    .teamIncrement(PointsCatogryStstus.A, 2);
                              },
                              title: "Add 2 Point"),
                          CustomButtonIncerment(
                              onPressed: () {
                                context
                                    .read<PointsCounterCubit>()
                                    .teamIncrement(PointsCatogryStstus.A, 3);
                              },
                              title: "Add 3 Point"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${context.read<PointsCounterCubit>().incrmentB}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          CustomButtonIncerment(
                              onPressed: () {
                                context
                                    .read<PointsCounterCubit>()
                                    .teamIncrement(PointsCatogryStstus.B, 1);
                              },
                              title: "Add 1 Point"),
                          CustomButtonIncerment(
                              onPressed: () {
                                context
                                    .read<PointsCounterCubit>()
                                    .teamIncrement(PointsCatogryStstus.B, 2);
                              },
                              title: "Add 2 Point"),
                          CustomButtonIncerment(
                              onPressed: () {
                                context
                                    .read<PointsCounterCubit>()
                                    .teamIncrement(PointsCatogryStstus.B, 3);
                              },
                              title: "Add 3 Point"),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomButtonIncerment(
                    onPressed: () {
                      context.read<PointsCounterCubit>().clear();
                    },
                    title: "Reset")
              ],
            ),
          );
        },
      ),
    );
  }
}
