// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iteration_counting_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IterationCountingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() seedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? seedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? seedChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeedChangedEvent value) seedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeedChangedEvent value)? seedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeedChangedEvent value)? seedChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IterationCountingEventCopyWith<$Res> {
  factory $IterationCountingEventCopyWith(IterationCountingEvent value,
          $Res Function(IterationCountingEvent) then) =
      _$IterationCountingEventCopyWithImpl<$Res, IterationCountingEvent>;
}

/// @nodoc
class _$IterationCountingEventCopyWithImpl<$Res,
        $Val extends IterationCountingEvent>
    implements $IterationCountingEventCopyWith<$Res> {
  _$IterationCountingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IterationCountingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SeedChangedEventImplCopyWith<$Res> {
  factory _$$SeedChangedEventImplCopyWith(_$SeedChangedEventImpl value,
          $Res Function(_$SeedChangedEventImpl) then) =
      __$$SeedChangedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeedChangedEventImplCopyWithImpl<$Res>
    extends _$IterationCountingEventCopyWithImpl<$Res, _$SeedChangedEventImpl>
    implements _$$SeedChangedEventImplCopyWith<$Res> {
  __$$SeedChangedEventImplCopyWithImpl(_$SeedChangedEventImpl _value,
      $Res Function(_$SeedChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of IterationCountingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeedChangedEventImpl implements SeedChangedEvent {
  const _$SeedChangedEventImpl();

  @override
  String toString() {
    return 'IterationCountingEvent.seedChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeedChangedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() seedChanged,
  }) {
    return seedChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? seedChanged,
  }) {
    return seedChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? seedChanged,
    required TResult orElse(),
  }) {
    if (seedChanged != null) {
      return seedChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeedChangedEvent value) seedChanged,
  }) {
    return seedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeedChangedEvent value)? seedChanged,
  }) {
    return seedChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeedChangedEvent value)? seedChanged,
    required TResult orElse(),
  }) {
    if (seedChanged != null) {
      return seedChanged(this);
    }
    return orElse();
  }
}

abstract class SeedChangedEvent implements IterationCountingEvent {
  const factory SeedChangedEvent() = _$SeedChangedEventImpl;
}
