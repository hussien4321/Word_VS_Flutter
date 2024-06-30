// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wordlee_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(WordleeResult result) failure,
    required TResult Function(WordleeResult result) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(WordleeResult result)? failure,
    TResult? Function(WordleeResult result)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(WordleeResult result)? failure,
    TResult Function(WordleeResult result)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInProgress value) inProgress,
    required TResult Function(GameStateFailure value) failure,
    required TResult Function(GameStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInProgress value)? inProgress,
    TResult? Function(GameStateFailure value)? failure,
    TResult? Function(GameStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInProgress value)? inProgress,
    TResult Function(GameStateFailure value)? failure,
    TResult Function(GameStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameStateInProgressImplCopyWith<$Res> {
  factory _$$GameStateInProgressImplCopyWith(_$GameStateInProgressImpl value,
          $Res Function(_$GameStateInProgressImpl) then) =
      __$$GameStateInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStateInProgressImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateInProgressImpl>
    implements _$$GameStateInProgressImplCopyWith<$Res> {
  __$$GameStateInProgressImplCopyWithImpl(_$GameStateInProgressImpl _value,
      $Res Function(_$GameStateInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStateInProgressImpl
    with DiagnosticableTreeMixin
    implements GameStateInProgress {
  _$GameStateInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameState.inProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(WordleeResult result) failure,
    required TResult Function(WordleeResult result) success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(WordleeResult result)? failure,
    TResult? Function(WordleeResult result)? success,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(WordleeResult result)? failure,
    TResult Function(WordleeResult result)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInProgress value) inProgress,
    required TResult Function(GameStateFailure value) failure,
    required TResult Function(GameStateSuccess value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInProgress value)? inProgress,
    TResult? Function(GameStateFailure value)? failure,
    TResult? Function(GameStateSuccess value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInProgress value)? inProgress,
    TResult Function(GameStateFailure value)? failure,
    TResult Function(GameStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class GameStateInProgress implements GameState {
  factory GameStateInProgress() = _$GameStateInProgressImpl;
}

/// @nodoc
abstract class _$$GameStateFailureImplCopyWith<$Res> {
  factory _$$GameStateFailureImplCopyWith(_$GameStateFailureImpl value,
          $Res Function(_$GameStateFailureImpl) then) =
      __$$GameStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordleeResult result});

  $WordleeResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$GameStateFailureImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateFailureImpl>
    implements _$$GameStateFailureImplCopyWith<$Res> {
  __$$GameStateFailureImplCopyWithImpl(_$GameStateFailureImpl _value,
      $Res Function(_$GameStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GameStateFailureImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as WordleeResult,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res> get result {
    return $WordleeResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$GameStateFailureImpl
    with DiagnosticableTreeMixin
    implements GameStateFailure {
  _$GameStateFailureImpl({required this.result});

  @override
  final WordleeResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.failure(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.failure'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateFailureImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateFailureImplCopyWith<_$GameStateFailureImpl> get copyWith =>
      __$$GameStateFailureImplCopyWithImpl<_$GameStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(WordleeResult result) failure,
    required TResult Function(WordleeResult result) success,
  }) {
    return failure(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(WordleeResult result)? failure,
    TResult? Function(WordleeResult result)? success,
  }) {
    return failure?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(WordleeResult result)? failure,
    TResult Function(WordleeResult result)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInProgress value) inProgress,
    required TResult Function(GameStateFailure value) failure,
    required TResult Function(GameStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInProgress value)? inProgress,
    TResult? Function(GameStateFailure value)? failure,
    TResult? Function(GameStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInProgress value)? inProgress,
    TResult Function(GameStateFailure value)? failure,
    TResult Function(GameStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GameStateFailure implements GameState {
  factory GameStateFailure({required final WordleeResult result}) =
      _$GameStateFailureImpl;

  WordleeResult get result;
  @JsonKey(ignore: true)
  _$$GameStateFailureImplCopyWith<_$GameStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateSuccessImplCopyWith<$Res> {
  factory _$$GameStateSuccessImplCopyWith(_$GameStateSuccessImpl value,
          $Res Function(_$GameStateSuccessImpl) then) =
      __$$GameStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordleeResult result});

  $WordleeResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$GameStateSuccessImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateSuccessImpl>
    implements _$$GameStateSuccessImplCopyWith<$Res> {
  __$$GameStateSuccessImplCopyWithImpl(_$GameStateSuccessImpl _value,
      $Res Function(_$GameStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GameStateSuccessImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as WordleeResult,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res> get result {
    return $WordleeResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$GameStateSuccessImpl
    with DiagnosticableTreeMixin
    implements GameStateSuccess {
  _$GameStateSuccessImpl({required this.result});

  @override
  final WordleeResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.success(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.success'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateSuccessImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateSuccessImplCopyWith<_$GameStateSuccessImpl> get copyWith =>
      __$$GameStateSuccessImplCopyWithImpl<_$GameStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(WordleeResult result) failure,
    required TResult Function(WordleeResult result) success,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(WordleeResult result)? failure,
    TResult? Function(WordleeResult result)? success,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(WordleeResult result)? failure,
    TResult Function(WordleeResult result)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInProgress value) inProgress,
    required TResult Function(GameStateFailure value) failure,
    required TResult Function(GameStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInProgress value)? inProgress,
    TResult? Function(GameStateFailure value)? failure,
    TResult? Function(GameStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInProgress value)? inProgress,
    TResult Function(GameStateFailure value)? failure,
    TResult Function(GameStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GameStateSuccess implements GameState {
  factory GameStateSuccess({required final WordleeResult result}) =
      _$GameStateSuccessImpl;

  WordleeResult get result;
  @JsonKey(ignore: true)
  _$$GameStateSuccessImplCopyWith<_$GameStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
