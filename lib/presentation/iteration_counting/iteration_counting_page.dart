import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaprekar_quest/application/injection/injection_container.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_bloc.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_event.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_state.dart';
import 'package:kaprekar_quest/domain/iteration_counting/iteration.dart';
import 'package:kaprekar_quest/presentation/core/layout.dart';

class IterationCountingPage extends StatelessWidget {
  const IterationCountingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final IterationCountingBloc bloc = getIt<IterationCountingBloc>();
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<IterationCountingBloc, IterationCountingState>(
        builder: (context, state) {
          return Layout(
            child: Column(
              children: [
                const Text('Holaaa'),
                TextFormField(
                  controller: state.textControllerManager.getController('seed'),
                  decoration: const InputDecoration(
                    labelText: 'Enter a number',
                  ),
                  onChanged: (String value) {
                    bloc.add(const IterationCountingEvent.seedChanged());
                  },
                ),
                if (!state.iterations.isEmpty())
                  Expanded(
                    child: Column(
                      children: state.iterations.asList().asMap().entries.map(
                        (entry) {
                          int index = entry.key + 1;
                          Iteration iteration = entry.value;
                          return Text("$index) $iteration");
                        },
                      ).toList(),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
