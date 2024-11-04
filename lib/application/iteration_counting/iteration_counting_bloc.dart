import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_event.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_state.dart';
import 'package:kaprekar_quest/domain/iteration_counting/iteration.dart';
import 'package:kaprekar_quest/domain/iteration_counting/max_iterations.dart';
import 'package:kaprekar_quest/domain/iteration_counting/seed.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton()
class IterationCountingBloc
    extends Bloc<IterationCountingEvent, IterationCountingState> {
  IterationCountingBloc() : super(IterationCountingState.initial()) {
    on<SeedChangedEvent>(_onSeedChanged);
    on<MaxIterationsChangedEvent>(_onMaxIterationsChanged);
  }

  void _onSeedChanged(
    SeedChangedEvent event,
    Emitter<IterationCountingState> emit,
  ) {
    try {
      String stringSeed =
          state.textControllerManager.getController('seed').text;
      int intSeed = int.parse(stringSeed);
      Seed seed = Seed(intSeed);
      emit(state.copyWith(
          seed: seed,
          iterations: Iteration.listFromSeed(seed, state.maxIterations)));
    } catch (_) {
      emit(
        state.copyWith(
          seed: Seed.empty(),
          iterations: const KtList.empty(),
        ),
      );
    }
  }

  void _onMaxIterationsChanged(
    MaxIterationsChangedEvent event,
    Emitter<IterationCountingState> emit,
  ) {
    try {
      String stringMaxIterations =
          state.textControllerManager.getController('maxIterations').text;
      int intMaxIterations = int.parse(stringMaxIterations);
      MaxIterations maxIterations = MaxIterations(intMaxIterations);
      emit(state.copyWith(maxIterations: maxIterations));
    } catch (_) {
      emit(state.copyWith(maxIterations: MaxIterations.defaultMax()));
    }
    add(const SeedChangedEvent());
  }
}
