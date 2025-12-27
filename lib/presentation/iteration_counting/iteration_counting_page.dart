import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaprekar_quest/application/injection/injection_container.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_bloc.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_event.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_state.dart';
import 'package:kaprekar_quest/domain/iteration_counting/iteration.dart';
import 'package:kaprekar_quest/domain/iteration_counting/max_iterations.dart';
import 'package:kaprekar_quest/presentation/core/layout.dart';

class IterationCountingPage extends StatelessWidget {
  const IterationCountingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: IterationCountingPageContent(),
    );
  }
}

class IterationCountingPageContent extends StatelessWidget {
  const IterationCountingPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final IterationCountingBloc bloc = getIt<IterationCountingBloc>();
    return Container(
        constraints: const BoxConstraints(maxWidth: 800, minWidth: 300),
        padding: const EdgeInsets.all(16),
        child: BlocProvider.value(
          value: bloc,
          child: BlocBuilder<IterationCountingBloc, IterationCountingState>(
            builder: (context, state) {
              return Column(
                children: [
                  const Text(
                    'Iteraciones de Kaprekar',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 260),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      controller: state.textControllerManager
                          .getController('maxIterations'),
                      decoration: InputDecoration(
                        labelText: 'Cantidad máxima de iteraciones',
                        hintText: 'Ingresa un número',
                        errorText: state.maxIterations.value.fold(
                          (failure) => failure.maybeMap(
                            invalidMaxInterations: (_) =>
                                'Debe ser mayor a 0 y menor a ${MaxIterations.max}',
                            orElse: () => 'Error',
                          ),
                          (_) => null,
                        ),
                      ),
                      onChanged: (String value) {
                        bloc.add(const IterationCountingEvent
                            .maxIterationsChanged());
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 260),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      controller:
                          state.textControllerManager.getController('seed'),
                      decoration: const InputDecoration(
                        labelText: 'Número inicial',
                        hintText: 'Ingresa un número',
                      ),
                      onChanged: (String value) {
                        bloc.add(const IterationCountingEvent.seedChanged());
                      },
                    ),
                  ),
                  if (!state.iterations.isEmpty()) const SizedBox(height: 16),
                  if (!state.iterations.isEmpty())
                    Expanded(
                      child: ListView(
                        children: state.iterations.asList().asMap().entries.map(
                          (entry) {
                            int index = entry.key + 1;
                            Iteration iteration = entry.value;
                            return Center(child: Text("$index) $iteration"));
                          },
                        ).toList(),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      );
  }
}
