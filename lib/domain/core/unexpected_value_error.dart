import 'package:kaprekar_quest/domain/core/value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return "UnexpectedValueError: $valueFailure";
  }
}
