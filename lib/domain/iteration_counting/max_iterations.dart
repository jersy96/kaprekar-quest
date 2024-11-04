import 'package:dartz/dartz.dart';
import 'package:kaprekar_quest/domain/core/value_failure.dart';
import 'package:kaprekar_quest/domain/core/value_object.dart';

class MaxIterations extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const MaxIterations._(this.value);

  factory MaxIterations(int value) {
    return MaxIterations._(validate(value));
  }

  factory MaxIterations.defaultMax() => MaxIterations(100);

  static int get max => 10000;

  static Either<ValueFailure<int>, int> validate(int value) {
    if (value <= 0 || value >= max) {
      return left(ValueFailure.invalidMaxInterations(failedValue: value));
    }
    return right(value);
  }
}
