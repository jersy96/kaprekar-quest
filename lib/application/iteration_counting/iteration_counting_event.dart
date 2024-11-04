import 'package:freezed_annotation/freezed_annotation.dart';

part 'iteration_counting_event.freezed.dart';

@freezed
abstract class IterationCountingEvent with _$IterationCountingEvent {
  const factory IterationCountingEvent.seedChanged() = SeedChangedEvent;
  const factory IterationCountingEvent.maxIterationsChanged() =
      MaxIterationsChangedEvent;
}
