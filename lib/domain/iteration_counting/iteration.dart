import 'package:dartz/dartz.dart';
import 'package:kaprekar_quest/domain/core/value_failure.dart';
import 'package:kaprekar_quest/domain/core/value_object.dart';
import 'package:kaprekar_quest/domain/iteration_counting/max_iterations.dart';
import 'package:kaprekar_quest/domain/iteration_counting/seed.dart';
import 'package:kt_dart/collection.dart';

class Iteration extends ValueObject<KtMap<String, int>> {
  @override
  final Either<ValueFailure<KtMap<String, int>>, KtMap<String, int>> value;

  const Iteration._(this.value);

  factory Iteration(KtMap<String, int> value) {
    return Iteration._(validate(value));
  }

  factory Iteration.empty() => Iteration(const KtMap.empty());

  factory Iteration.fromSeed(Seed seed) {
    return seed.value.fold(
      (f) => Iteration.empty(),
      (int seedValue) {
        List<int> splittedSeed =
            seedValue.toString().split('').map(int.parse).toList();
        List<int> subtrahendList = splittedSeed..sort();
        List<int> minuendList = subtrahendList.reversed.toList();
        int minuend = int.parse(minuendList.join());
        int subtrahend = int.parse(subtrahendList.join());
        int difference = minuend - subtrahend;
        return Iteration({
          'minuend': minuend,
          'subtrahend': subtrahend,
          'difference': difference,
        }.toImmutableMap());
      },
    );
  }

  static KtList<Iteration> listFromSeed(
    Seed seed,
    MaxIterations maxIterations,
  ) {
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
            lastIteration != newIteration &&
            iterations.length < maxIterations.value.getOrElse(() => 100));
        return iterations.toImmutableList();
      },
    );
  }

  static Either<ValueFailure<KtMap<String, int>>, KtMap<String, int>> validate(
      KtMap<String, int> value) {
    bool someIsNull = value['minuend'] == null ||
        value['subtrahend'] == null ||
        value['difference'] == null;
    if (someIsNull) {
      return left(ValueFailure.invalidIteration(failedValue: value));
    }
    bool someIsNegative = value['minuend']! < 0 ||
        value['subtrahend']! < 0 ||
        value['difference']! < 0;
    if (someIsNegative) {
      return left(ValueFailure.invalidIteration(failedValue: value));
    }
    return right(value);
  }

  @override
  String toString() {
    return '${valueOrFailedValue['minuend']} - ${valueOrFailedValue['subtrahend']} = ${valueOrFailedValue['difference']}';
  }
}
