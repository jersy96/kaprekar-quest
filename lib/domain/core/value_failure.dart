import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidSeed({required T failedValue}) =
      InvalidSeed<T>;
  const factory ValueFailure.invalidIteration({required T failedValue}) =
      InvalidIteration<T>;
  const factory ValueFailure.invalidMaxInterations({required T failedValue}) =
      InvalidMaxIterations<T>;
}
