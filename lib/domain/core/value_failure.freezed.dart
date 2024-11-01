// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidSeed,
    required TResult Function(T failedValue) invalidIteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidSeed,
    TResult? Function(T failedValue)? invalidIteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidSeed,
    TResult Function(T failedValue)? invalidIteration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidSeed<T> value) invalidSeed,
    required TResult Function(InvalidIteration<T> value) invalidIteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidSeed<T> value)? invalidSeed,
    TResult? Function(InvalidIteration<T> value)? invalidIteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidSeed<T> value)? invalidSeed,
    TResult Function(InvalidIteration<T> value)? invalidIteration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidSeedImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidSeedImplCopyWith(_$InvalidSeedImpl<T> value,
          $Res Function(_$InvalidSeedImpl<T>) then) =
      __$$InvalidSeedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidSeedImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidSeedImpl<T>>
    implements _$$InvalidSeedImplCopyWith<T, $Res> {
  __$$InvalidSeedImplCopyWithImpl(
      _$InvalidSeedImpl<T> _value, $Res Function(_$InvalidSeedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidSeedImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidSeedImpl<T> implements InvalidSeed<T> {
  const _$InvalidSeedImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidSeed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidSeedImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidSeedImplCopyWith<T, _$InvalidSeedImpl<T>> get copyWith =>
      __$$InvalidSeedImplCopyWithImpl<T, _$InvalidSeedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidSeed,
    required TResult Function(T failedValue) invalidIteration,
  }) {
    return invalidSeed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidSeed,
    TResult? Function(T failedValue)? invalidIteration,
  }) {
    return invalidSeed?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidSeed,
    TResult Function(T failedValue)? invalidIteration,
    required TResult orElse(),
  }) {
    if (invalidSeed != null) {
      return invalidSeed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidSeed<T> value) invalidSeed,
    required TResult Function(InvalidIteration<T> value) invalidIteration,
  }) {
    return invalidSeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidSeed<T> value)? invalidSeed,
    TResult? Function(InvalidIteration<T> value)? invalidIteration,
  }) {
    return invalidSeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidSeed<T> value)? invalidSeed,
    TResult Function(InvalidIteration<T> value)? invalidIteration,
    required TResult orElse(),
  }) {
    if (invalidSeed != null) {
      return invalidSeed(this);
    }
    return orElse();
  }
}

abstract class InvalidSeed<T> implements ValueFailure<T> {
  const factory InvalidSeed({required final T failedValue}) =
      _$InvalidSeedImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidSeedImplCopyWith<T, _$InvalidSeedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidIterationImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidIterationImplCopyWith(_$InvalidIterationImpl<T> value,
          $Res Function(_$InvalidIterationImpl<T>) then) =
      __$$InvalidIterationImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidIterationImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidIterationImpl<T>>
    implements _$$InvalidIterationImplCopyWith<T, $Res> {
  __$$InvalidIterationImplCopyWithImpl(_$InvalidIterationImpl<T> _value,
      $Res Function(_$InvalidIterationImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidIterationImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidIterationImpl<T> implements InvalidIteration<T> {
  const _$InvalidIterationImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidIteration(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidIterationImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidIterationImplCopyWith<T, _$InvalidIterationImpl<T>> get copyWith =>
      __$$InvalidIterationImplCopyWithImpl<T, _$InvalidIterationImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidSeed,
    required TResult Function(T failedValue) invalidIteration,
  }) {
    return invalidIteration(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidSeed,
    TResult? Function(T failedValue)? invalidIteration,
  }) {
    return invalidIteration?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidSeed,
    TResult Function(T failedValue)? invalidIteration,
    required TResult orElse(),
  }) {
    if (invalidIteration != null) {
      return invalidIteration(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidSeed<T> value) invalidSeed,
    required TResult Function(InvalidIteration<T> value) invalidIteration,
  }) {
    return invalidIteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidSeed<T> value)? invalidSeed,
    TResult? Function(InvalidIteration<T> value)? invalidIteration,
  }) {
    return invalidIteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidSeed<T> value)? invalidSeed,
    TResult Function(InvalidIteration<T> value)? invalidIteration,
    required TResult orElse(),
  }) {
    if (invalidIteration != null) {
      return invalidIteration(this);
    }
    return orElse();
  }
}

abstract class InvalidIteration<T> implements ValueFailure<T> {
  const factory InvalidIteration({required final T failedValue}) =
      _$InvalidIterationImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidIterationImplCopyWith<T, _$InvalidIterationImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
