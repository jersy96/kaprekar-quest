// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iteration_counting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IterationCountingState {
  Seed get seed => throw _privateConstructorUsedError;
  TextEditingControllerManager get textControllerManager =>
      throw _privateConstructorUsedError;
  KtList<Iteration> get iterations => throw _privateConstructorUsedError;

  /// Create a copy of IterationCountingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IterationCountingStateCopyWith<IterationCountingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IterationCountingStateCopyWith<$Res> {
  factory $IterationCountingStateCopyWith(IterationCountingState value,
          $Res Function(IterationCountingState) then) =
      _$IterationCountingStateCopyWithImpl<$Res, IterationCountingState>;
  @useResult
  $Res call(
      {Seed seed,
      TextEditingControllerManager textControllerManager,
      KtList<Iteration> iterations});
}

/// @nodoc
class _$IterationCountingStateCopyWithImpl<$Res,
        $Val extends IterationCountingState>
    implements $IterationCountingStateCopyWith<$Res> {
  _$IterationCountingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IterationCountingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seed = null,
    Object? textControllerManager = null,
    Object? iterations = null,
  }) {
    return _then(_value.copyWith(
      seed: null == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as Seed,
      textControllerManager: null == textControllerManager
          ? _value.textControllerManager
          : textControllerManager // ignore: cast_nullable_to_non_nullable
              as TextEditingControllerManager,
      iterations: null == iterations
          ? _value.iterations
          : iterations // ignore: cast_nullable_to_non_nullable
              as KtList<Iteration>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IterationCountingStateImplCopyWith<$Res>
    implements $IterationCountingStateCopyWith<$Res> {
  factory _$$IterationCountingStateImplCopyWith(
          _$IterationCountingStateImpl value,
          $Res Function(_$IterationCountingStateImpl) then) =
      __$$IterationCountingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Seed seed,
      TextEditingControllerManager textControllerManager,
      KtList<Iteration> iterations});
}

/// @nodoc
class __$$IterationCountingStateImplCopyWithImpl<$Res>
    extends _$IterationCountingStateCopyWithImpl<$Res,
        _$IterationCountingStateImpl>
    implements _$$IterationCountingStateImplCopyWith<$Res> {
  __$$IterationCountingStateImplCopyWithImpl(
      _$IterationCountingStateImpl _value,
      $Res Function(_$IterationCountingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IterationCountingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seed = null,
    Object? textControllerManager = null,
    Object? iterations = null,
  }) {
    return _then(_$IterationCountingStateImpl(
      seed: null == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as Seed,
      textControllerManager: null == textControllerManager
          ? _value.textControllerManager
          : textControllerManager // ignore: cast_nullable_to_non_nullable
              as TextEditingControllerManager,
      iterations: null == iterations
          ? _value.iterations
          : iterations // ignore: cast_nullable_to_non_nullable
              as KtList<Iteration>,
    ));
  }
}

/// @nodoc

class _$IterationCountingStateImpl extends _IterationCountingState {
  const _$IterationCountingStateImpl(
      {required this.seed,
      required this.textControllerManager,
      required this.iterations})
      : super._();

  @override
  final Seed seed;
  @override
  final TextEditingControllerManager textControllerManager;
  @override
  final KtList<Iteration> iterations;

  @override
  String toString() {
    return 'IterationCountingState(seed: $seed, textControllerManager: $textControllerManager, iterations: $iterations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IterationCountingStateImpl &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.textControllerManager, textControllerManager) ||
                other.textControllerManager == textControllerManager) &&
            (identical(other.iterations, iterations) ||
                other.iterations == iterations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, seed, textControllerManager, iterations);

  /// Create a copy of IterationCountingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IterationCountingStateImplCopyWith<_$IterationCountingStateImpl>
      get copyWith => __$$IterationCountingStateImplCopyWithImpl<
          _$IterationCountingStateImpl>(this, _$identity);
}

abstract class _IterationCountingState extends IterationCountingState {
  const factory _IterationCountingState(
          {required final Seed seed,
          required final TextEditingControllerManager textControllerManager,
          required final KtList<Iteration> iterations}) =
      _$IterationCountingStateImpl;
  const _IterationCountingState._() : super._();

  @override
  Seed get seed;
  @override
  TextEditingControllerManager get textControllerManager;
  @override
  KtList<Iteration> get iterations;

  /// Create a copy of IterationCountingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IterationCountingStateImplCopyWith<_$IterationCountingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
