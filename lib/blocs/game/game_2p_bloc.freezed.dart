// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_2p_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Game2pState {
  WordleeSession2P get session => throw _privateConstructorUsedError;
  bool get isHost => throw _privateConstructorUsedError;
  bool get isCancelled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Game2pStateCopyWith<Game2pState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Game2pStateCopyWith<$Res> {
  factory $Game2pStateCopyWith(
          Game2pState value, $Res Function(Game2pState) then) =
      _$Game2pStateCopyWithImpl<$Res, Game2pState>;
  @useResult
  $Res call({WordleeSession2P session, bool isHost, bool isCancelled});
}

/// @nodoc
class _$Game2pStateCopyWithImpl<$Res, $Val extends Game2pState>
    implements $Game2pStateCopyWith<$Res> {
  _$Game2pStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? isHost = null,
    Object? isCancelled = null,
  }) {
    return _then(_value.copyWith(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as WordleeSession2P,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelled: null == isCancelled
          ? _value.isCancelled
          : isCancelled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Game2pStateImplCopyWith<$Res>
    implements $Game2pStateCopyWith<$Res> {
  factory _$$Game2pStateImplCopyWith(
          _$Game2pStateImpl value, $Res Function(_$Game2pStateImpl) then) =
      __$$Game2pStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WordleeSession2P session, bool isHost, bool isCancelled});
}

/// @nodoc
class __$$Game2pStateImplCopyWithImpl<$Res>
    extends _$Game2pStateCopyWithImpl<$Res, _$Game2pStateImpl>
    implements _$$Game2pStateImplCopyWith<$Res> {
  __$$Game2pStateImplCopyWithImpl(
      _$Game2pStateImpl _value, $Res Function(_$Game2pStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? isHost = null,
    Object? isCancelled = null,
  }) {
    return _then(_$Game2pStateImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as WordleeSession2P,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelled: null == isCancelled
          ? _value.isCancelled
          : isCancelled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Game2pStateImpl implements _Game2pState {
  _$Game2pStateImpl(
      {required this.session, required this.isHost, required this.isCancelled});

  @override
  final WordleeSession2P session;
  @override
  final bool isHost;
  @override
  final bool isCancelled;

  @override
  String toString() {
    return 'Game2pState(session: $session, isHost: $isHost, isCancelled: $isCancelled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Game2pStateImpl &&
            const DeepCollectionEquality().equals(other.session, session) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.isCancelled, isCancelled) ||
                other.isCancelled == isCancelled));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(session), isHost, isCancelled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Game2pStateImplCopyWith<_$Game2pStateImpl> get copyWith =>
      __$$Game2pStateImplCopyWithImpl<_$Game2pStateImpl>(this, _$identity);
}

abstract class _Game2pState implements Game2pState {
  factory _Game2pState(
      {required final WordleeSession2P session,
      required final bool isHost,
      required final bool isCancelled}) = _$Game2pStateImpl;

  @override
  WordleeSession2P get session;
  @override
  bool get isHost;
  @override
  bool get isCancelled;
  @override
  @JsonKey(ignore: true)
  _$$Game2pStateImplCopyWith<_$Game2pStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Game2pEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(WordleeResult results) submitResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(WordleeResult results)? submitResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(WordleeResult results)? submitResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Game2pConnectEvent value) connect,
    required TResult Function(Game2pDisconnectEvent value) disconnect,
    required TResult Function(Game2pSubmitResultsEvent value) submitResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Game2pConnectEvent value)? connect,
    TResult? Function(Game2pDisconnectEvent value)? disconnect,
    TResult? Function(Game2pSubmitResultsEvent value)? submitResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Game2pConnectEvent value)? connect,
    TResult Function(Game2pDisconnectEvent value)? disconnect,
    TResult Function(Game2pSubmitResultsEvent value)? submitResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Game2pEventCopyWith<$Res> {
  factory $Game2pEventCopyWith(
          Game2pEvent value, $Res Function(Game2pEvent) then) =
      _$Game2pEventCopyWithImpl<$Res, Game2pEvent>;
}

/// @nodoc
class _$Game2pEventCopyWithImpl<$Res, $Val extends Game2pEvent>
    implements $Game2pEventCopyWith<$Res> {
  _$Game2pEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$Game2pConnectEventImplCopyWith<$Res> {
  factory _$$Game2pConnectEventImplCopyWith(_$Game2pConnectEventImpl value,
          $Res Function(_$Game2pConnectEventImpl) then) =
      __$$Game2pConnectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Game2pConnectEventImplCopyWithImpl<$Res>
    extends _$Game2pEventCopyWithImpl<$Res, _$Game2pConnectEventImpl>
    implements _$$Game2pConnectEventImplCopyWith<$Res> {
  __$$Game2pConnectEventImplCopyWithImpl(_$Game2pConnectEventImpl _value,
      $Res Function(_$Game2pConnectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Game2pConnectEventImpl implements Game2pConnectEvent {
  _$Game2pConnectEventImpl();

  @override
  String toString() {
    return 'Game2pEvent.connect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Game2pConnectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(WordleeResult results) submitResults,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(WordleeResult results)? submitResults,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(WordleeResult results)? submitResults,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Game2pConnectEvent value) connect,
    required TResult Function(Game2pDisconnectEvent value) disconnect,
    required TResult Function(Game2pSubmitResultsEvent value) submitResults,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Game2pConnectEvent value)? connect,
    TResult? Function(Game2pDisconnectEvent value)? disconnect,
    TResult? Function(Game2pSubmitResultsEvent value)? submitResults,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Game2pConnectEvent value)? connect,
    TResult Function(Game2pDisconnectEvent value)? disconnect,
    TResult Function(Game2pSubmitResultsEvent value)? submitResults,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Game2pConnectEvent implements Game2pEvent {
  factory Game2pConnectEvent() = _$Game2pConnectEventImpl;
}

/// @nodoc
abstract class _$$Game2pDisconnectEventImplCopyWith<$Res> {
  factory _$$Game2pDisconnectEventImplCopyWith(
          _$Game2pDisconnectEventImpl value,
          $Res Function(_$Game2pDisconnectEventImpl) then) =
      __$$Game2pDisconnectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Game2pDisconnectEventImplCopyWithImpl<$Res>
    extends _$Game2pEventCopyWithImpl<$Res, _$Game2pDisconnectEventImpl>
    implements _$$Game2pDisconnectEventImplCopyWith<$Res> {
  __$$Game2pDisconnectEventImplCopyWithImpl(_$Game2pDisconnectEventImpl _value,
      $Res Function(_$Game2pDisconnectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Game2pDisconnectEventImpl implements Game2pDisconnectEvent {
  _$Game2pDisconnectEventImpl();

  @override
  String toString() {
    return 'Game2pEvent.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Game2pDisconnectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(WordleeResult results) submitResults,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(WordleeResult results)? submitResults,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(WordleeResult results)? submitResults,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Game2pConnectEvent value) connect,
    required TResult Function(Game2pDisconnectEvent value) disconnect,
    required TResult Function(Game2pSubmitResultsEvent value) submitResults,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Game2pConnectEvent value)? connect,
    TResult? Function(Game2pDisconnectEvent value)? disconnect,
    TResult? Function(Game2pSubmitResultsEvent value)? submitResults,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Game2pConnectEvent value)? connect,
    TResult Function(Game2pDisconnectEvent value)? disconnect,
    TResult Function(Game2pSubmitResultsEvent value)? submitResults,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Game2pDisconnectEvent implements Game2pEvent {
  factory Game2pDisconnectEvent() = _$Game2pDisconnectEventImpl;
}

/// @nodoc
abstract class _$$Game2pSubmitResultsEventImplCopyWith<$Res> {
  factory _$$Game2pSubmitResultsEventImplCopyWith(
          _$Game2pSubmitResultsEventImpl value,
          $Res Function(_$Game2pSubmitResultsEventImpl) then) =
      __$$Game2pSubmitResultsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordleeResult results});

  $WordleeResultCopyWith<$Res> get results;
}

/// @nodoc
class __$$Game2pSubmitResultsEventImplCopyWithImpl<$Res>
    extends _$Game2pEventCopyWithImpl<$Res, _$Game2pSubmitResultsEventImpl>
    implements _$$Game2pSubmitResultsEventImplCopyWith<$Res> {
  __$$Game2pSubmitResultsEventImplCopyWithImpl(
      _$Game2pSubmitResultsEventImpl _value,
      $Res Function(_$Game2pSubmitResultsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$Game2pSubmitResultsEventImpl(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as WordleeResult,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res> get results {
    return $WordleeResultCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc

class _$Game2pSubmitResultsEventImpl implements Game2pSubmitResultsEvent {
  _$Game2pSubmitResultsEventImpl({required this.results});

  @override
  final WordleeResult results;

  @override
  String toString() {
    return 'Game2pEvent.submitResults(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Game2pSubmitResultsEventImpl &&
            (identical(other.results, results) || other.results == results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Game2pSubmitResultsEventImplCopyWith<_$Game2pSubmitResultsEventImpl>
      get copyWith => __$$Game2pSubmitResultsEventImplCopyWithImpl<
          _$Game2pSubmitResultsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(WordleeResult results) submitResults,
  }) {
    return submitResults(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(WordleeResult results)? submitResults,
  }) {
    return submitResults?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(WordleeResult results)? submitResults,
    required TResult orElse(),
  }) {
    if (submitResults != null) {
      return submitResults(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Game2pConnectEvent value) connect,
    required TResult Function(Game2pDisconnectEvent value) disconnect,
    required TResult Function(Game2pSubmitResultsEvent value) submitResults,
  }) {
    return submitResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Game2pConnectEvent value)? connect,
    TResult? Function(Game2pDisconnectEvent value)? disconnect,
    TResult? Function(Game2pSubmitResultsEvent value)? submitResults,
  }) {
    return submitResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Game2pConnectEvent value)? connect,
    TResult Function(Game2pDisconnectEvent value)? disconnect,
    TResult Function(Game2pSubmitResultsEvent value)? submitResults,
    required TResult orElse(),
  }) {
    if (submitResults != null) {
      return submitResults(this);
    }
    return orElse();
  }
}

abstract class Game2pSubmitResultsEvent implements Game2pEvent {
  factory Game2pSubmitResultsEvent({required final WordleeResult results}) =
      _$Game2pSubmitResultsEventImpl;

  WordleeResult get results;
  @JsonKey(ignore: true)
  _$$Game2pSubmitResultsEventImplCopyWith<_$Game2pSubmitResultsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
