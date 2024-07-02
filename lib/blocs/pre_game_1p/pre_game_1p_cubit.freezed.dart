// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_game_1p_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreGame1pState {
  WordleeTime get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time) init,
    required TResult Function(WordleeTime time) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time)? init,
    TResult? Function(WordleeTime time)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time)? init,
    TResult Function(WordleeTime time)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame1pInitState value) init,
    required TResult Function(PreGame1pStartedState value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame1pInitState value)? init,
    TResult? Function(PreGame1pStartedState value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame1pInitState value)? init,
    TResult Function(PreGame1pStartedState value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreGame1pStateCopyWith<PreGame1pState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreGame1pStateCopyWith<$Res> {
  factory $PreGame1pStateCopyWith(
          PreGame1pState value, $Res Function(PreGame1pState) then) =
      _$PreGame1pStateCopyWithImpl<$Res, PreGame1pState>;
  @useResult
  $Res call({WordleeTime time});
}

/// @nodoc
class _$PreGame1pStateCopyWithImpl<$Res, $Val extends PreGame1pState>
    implements $PreGame1pStateCopyWith<$Res> {
  _$PreGame1pStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreGame1pInitStateImplCopyWith<$Res>
    implements $PreGame1pStateCopyWith<$Res> {
  factory _$$PreGame1pInitStateImplCopyWith(_$PreGame1pInitStateImpl value,
          $Res Function(_$PreGame1pInitStateImpl) then) =
      __$$PreGame1pInitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WordleeTime time});
}

/// @nodoc
class __$$PreGame1pInitStateImplCopyWithImpl<$Res>
    extends _$PreGame1pStateCopyWithImpl<$Res, _$PreGame1pInitStateImpl>
    implements _$$PreGame1pInitStateImplCopyWith<$Res> {
  __$$PreGame1pInitStateImplCopyWithImpl(_$PreGame1pInitStateImpl _value,
      $Res Function(_$PreGame1pInitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$PreGame1pInitStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
    ));
  }
}

/// @nodoc

class _$PreGame1pInitStateImpl implements PreGame1pInitState {
  _$PreGame1pInitStateImpl({required this.time});

  @override
  final WordleeTime time;

  @override
  String toString() {
    return 'PreGame1pState.init(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame1pInitStateImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame1pInitStateImplCopyWith<_$PreGame1pInitStateImpl> get copyWith =>
      __$$PreGame1pInitStateImplCopyWithImpl<_$PreGame1pInitStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time) init,
    required TResult Function(WordleeTime time) started,
  }) {
    return init(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time)? init,
    TResult? Function(WordleeTime time)? started,
  }) {
    return init?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time)? init,
    TResult Function(WordleeTime time)? started,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame1pInitState value) init,
    required TResult Function(PreGame1pStartedState value) started,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame1pInitState value)? init,
    TResult? Function(PreGame1pStartedState value)? started,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame1pInitState value)? init,
    TResult Function(PreGame1pStartedState value)? started,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PreGame1pInitState implements PreGame1pState {
  factory PreGame1pInitState({required final WordleeTime time}) =
      _$PreGame1pInitStateImpl;

  @override
  WordleeTime get time;
  @override
  @JsonKey(ignore: true)
  _$$PreGame1pInitStateImplCopyWith<_$PreGame1pInitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame1pStartedStateImplCopyWith<$Res>
    implements $PreGame1pStateCopyWith<$Res> {
  factory _$$PreGame1pStartedStateImplCopyWith(
          _$PreGame1pStartedStateImpl value,
          $Res Function(_$PreGame1pStartedStateImpl) then) =
      __$$PreGame1pStartedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WordleeTime time});
}

/// @nodoc
class __$$PreGame1pStartedStateImplCopyWithImpl<$Res>
    extends _$PreGame1pStateCopyWithImpl<$Res, _$PreGame1pStartedStateImpl>
    implements _$$PreGame1pStartedStateImplCopyWith<$Res> {
  __$$PreGame1pStartedStateImplCopyWithImpl(_$PreGame1pStartedStateImpl _value,
      $Res Function(_$PreGame1pStartedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$PreGame1pStartedStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
    ));
  }
}

/// @nodoc

class _$PreGame1pStartedStateImpl implements PreGame1pStartedState {
  _$PreGame1pStartedStateImpl({required this.time});

  @override
  final WordleeTime time;

  @override
  String toString() {
    return 'PreGame1pState.started(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame1pStartedStateImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame1pStartedStateImplCopyWith<_$PreGame1pStartedStateImpl>
      get copyWith => __$$PreGame1pStartedStateImplCopyWithImpl<
          _$PreGame1pStartedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time) init,
    required TResult Function(WordleeTime time) started,
  }) {
    return started(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time)? init,
    TResult? Function(WordleeTime time)? started,
  }) {
    return started?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time)? init,
    TResult Function(WordleeTime time)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame1pInitState value) init,
    required TResult Function(PreGame1pStartedState value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame1pInitState value)? init,
    TResult? Function(PreGame1pStartedState value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame1pInitState value)? init,
    TResult Function(PreGame1pStartedState value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PreGame1pStartedState implements PreGame1pState {
  factory PreGame1pStartedState({required final WordleeTime time}) =
      _$PreGame1pStartedStateImpl;

  @override
  WordleeTime get time;
  @override
  @JsonKey(ignore: true)
  _$$PreGame1pStartedStateImplCopyWith<_$PreGame1pStartedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
