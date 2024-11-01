import 'package:dartz/dartz.dart';
import 'package:kaprekar_quest/domain/core/value_failure.dart';
import 'package:kaprekar_quest/domain/core/value_object.dart';

class Seed extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const Seed._(this.value);

  factory Seed(int value) {
    return Seed._(validate(value));
  }

  factory Seed.empty() => Seed(0);

  static Either<ValueFailure<int>, int> validate(int value) {
    if (value < 0) return left(ValueFailure.invalidSeed(failedValue: value));
    return right(value);
  }
}
