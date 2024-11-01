import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_event.dart';
import 'package:kaprekar_quest/application/iteration_counting/iteration_counting_state.dart';
import 'package:kaprekar_quest/domain/iteration_counting/iteration.dart';
import 'package:kaprekar_quest/domain/iteration_counting/seed.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton()
class IterationCountingBloc
    extends Bloc<IterationCountingEvent, IterationCountingState> {
  IterationCountingBloc() : super(IterationCountingState.initial()) {
    on<SeedChangedEvent>(_onSeedChanged);
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
      emit(state.copyWith(seed: seed, iterations: _iterationsFromSeed(seed)));
    } catch (_) {
      emit(state.copyWith(seed: Seed.empty()));
    }
  }

  KtList<Iteration> _iterationsFromSeed(Seed seed) {
    return seed.value.fold(
      (_) => const KtList.empty(),
      (int seedValue) {
        List<Iteration> iterations = [];
        Iteration firstIteration = Iteration.fromSeed(seed);
        iterations.add(firstIteration);

        Iteration lastIteration;
        Iteration newIteration = Iteration.empty();
        do {
          lastIteration = iterations.last;
          lastIteration.value.fold((f) {}, (iteration) {
            newIteration = Iteration.fromSeed(
              Seed(iteration['difference']!),
            );
            iterations.add(newIteration);
          });
        } while (lastIteration.isValid() &&
            newIteration.isValid() &&
            lastIteration != newIteration);
        return iterations.toImmutableList();
      },
    );
  }
}
