import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaprekar_quest/application/core/text_editing_controller_manager.dart';
import 'package:kaprekar_quest/domain/iteration_counting/iteration.dart';
import 'package:kaprekar_quest/domain/iteration_counting/seed.dart';
import 'package:kt_dart/kt.dart';

part 'iteration_counting_state.freezed.dart';

@freezed
abstract class IterationCountingState with _$IterationCountingState {
  const IterationCountingState._();

  const factory IterationCountingState({
    required Seed seed,
    required TextEditingControllerManager textControllerManager,
    required KtList<Iteration> iterations,
  }) = _IterationCountingState;

  factory IterationCountingState.initial() {
    return IterationCountingState(
      seed: Seed.empty(),
      textControllerManager: TextEditingControllerManager({}),
      iterations: const KtList.empty(),
    );
  }
}
