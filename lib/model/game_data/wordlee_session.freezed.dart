// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wordlee_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordleeSession _$WordleeSessionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'onePlayer':
      return WordleeSession1P.fromJson(json);
    case 'twoPlayer':
      return WordleeSession2P.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WordleeSession',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WordleeSession {
  WordleeTime get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time, String answer) onePlayer,
    required TResult Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)
        twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time, String answer)? onePlayer,
    TResult? Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)?
        twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time, String answer)? onePlayer,
    TResult Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)?
        twoPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeSession1P value) onePlayer,
    required TResult Function(WordleeSession2P value) twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeSession1P value)? onePlayer,
    TResult? Function(WordleeSession2P value)? twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeSession1P value)? onePlayer,
    TResult Function(WordleeSession2P value)? twoPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleeSessionCopyWith<WordleeSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleeSessionCopyWith<$Res> {
  factory $WordleeSessionCopyWith(
          WordleeSession value, $Res Function(WordleeSession) then) =
      _$WordleeSessionCopyWithImpl<$Res, WordleeSession>;
  @useResult
  $Res call({WordleeTime time});
}

/// @nodoc
class _$WordleeSessionCopyWithImpl<$Res, $Val extends WordleeSession>
    implements $WordleeSessionCopyWith<$Res> {
  _$WordleeSessionCopyWithImpl(this._value, this._then);

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
abstract class _$$WordleeSession1PImplCopyWith<$Res>
    implements $WordleeSessionCopyWith<$Res> {
  factory _$$WordleeSession1PImplCopyWith(_$WordleeSession1PImpl value,
          $Res Function(_$WordleeSession1PImpl) then) =
      __$$WordleeSession1PImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WordleeTime time, String answer});
}

/// @nodoc
class __$$WordleeSession1PImplCopyWithImpl<$Res>
    extends _$WordleeSessionCopyWithImpl<$Res, _$WordleeSession1PImpl>
    implements _$$WordleeSession1PImplCopyWith<$Res> {
  __$$WordleeSession1PImplCopyWithImpl(_$WordleeSession1PImpl _value,
      $Res Function(_$WordleeSession1PImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? answer = null,
  }) {
    return _then(_$WordleeSession1PImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleeSession1PImpl extends WordleeSession1P {
  _$WordleeSession1PImpl(
      {required this.time, required this.answer, final String? $type})
      : $type = $type ?? 'onePlayer',
        super._();

  factory _$WordleeSession1PImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeSession1PImplFromJson(json);

  @override
  final WordleeTime time;
  @override
  final String answer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WordleeSession.onePlayer(time: $time, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeSession1PImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeSession1PImplCopyWith<_$WordleeSession1PImpl> get copyWith =>
      __$$WordleeSession1PImplCopyWithImpl<_$WordleeSession1PImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time, String answer) onePlayer,
    required TResult Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)
        twoPlayer,
  }) {
    return onePlayer(time, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time, String answer)? onePlayer,
    TResult? Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)?
        twoPlayer,
  }) {
    return onePlayer?.call(time, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time, String answer)? onePlayer,
    TResult Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)?
        twoPlayer,
    required TResult orElse(),
  }) {
    if (onePlayer != null) {
      return onePlayer(time, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeSession1P value) onePlayer,
    required TResult Function(WordleeSession2P value) twoPlayer,
  }) {
    return onePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeSession1P value)? onePlayer,
    TResult? Function(WordleeSession2P value)? twoPlayer,
  }) {
    return onePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeSession1P value)? onePlayer,
    TResult Function(WordleeSession2P value)? twoPlayer,
    required TResult orElse(),
  }) {
    if (onePlayer != null) {
      return onePlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeSession1PImplToJson(
      this,
    );
  }
}

abstract class WordleeSession1P extends WordleeSession {
  factory WordleeSession1P(
      {required final WordleeTime time,
      required final String answer}) = _$WordleeSession1PImpl;
  WordleeSession1P._() : super._();

  factory WordleeSession1P.fromJson(Map<String, dynamic> json) =
      _$WordleeSession1PImpl.fromJson;

  @override
  WordleeTime get time;
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$WordleeSession1PImplCopyWith<_$WordleeSession1PImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WordleeSession2PImplCopyWith<$Res>
    implements $WordleeSessionCopyWith<$Res> {
  factory _$$WordleeSession2PImplCopyWith(_$WordleeSession2PImpl value,
          $Res Function(_$WordleeSession2PImpl) then) =
      __$$WordleeSession2PImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool isHost,
      bool hasStarted,
      WordleeTime time,
      bool hasPlayer2Joined,
      WordleeAnswerType answerType,
      String? player1Answer,
      String player2Answer,
      String player1Name,
      String? player2Name,
      WordleeResult? player1Result,
      WordleeResult? player2Result,
      @TimestampConverter() DateTime createdAt});

  $WordleeResultCopyWith<$Res>? get player1Result;
  $WordleeResultCopyWith<$Res>? get player2Result;
}

/// @nodoc
class __$$WordleeSession2PImplCopyWithImpl<$Res>
    extends _$WordleeSessionCopyWithImpl<$Res, _$WordleeSession2PImpl>
    implements _$$WordleeSession2PImplCopyWith<$Res> {
  __$$WordleeSession2PImplCopyWithImpl(_$WordleeSession2PImpl _value,
      $Res Function(_$WordleeSession2PImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isHost = null,
    Object? hasStarted = null,
    Object? time = null,
    Object? hasPlayer2Joined = null,
    Object? answerType = null,
    Object? player1Answer = freezed,
    Object? player2Answer = null,
    Object? player1Name = null,
    Object? player2Name = freezed,
    Object? player1Result = freezed,
    Object? player2Result = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$WordleeSession2PImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStarted: null == hasStarted
          ? _value.hasStarted
          : hasStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      hasPlayer2Joined: null == hasPlayer2Joined
          ? _value.hasPlayer2Joined
          : hasPlayer2Joined // ignore: cast_nullable_to_non_nullable
              as bool,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as WordleeAnswerType,
      player1Answer: freezed == player1Answer
          ? _value.player1Answer
          : player1Answer // ignore: cast_nullable_to_non_nullable
              as String?,
      player2Answer: null == player2Answer
          ? _value.player2Answer
          : player2Answer // ignore: cast_nullable_to_non_nullable
              as String,
      player1Name: null == player1Name
          ? _value.player1Name
          : player1Name // ignore: cast_nullable_to_non_nullable
              as String,
      player2Name: freezed == player2Name
          ? _value.player2Name
          : player2Name // ignore: cast_nullable_to_non_nullable
              as String?,
      player1Result: freezed == player1Result
          ? _value.player1Result
          : player1Result // ignore: cast_nullable_to_non_nullable
              as WordleeResult?,
      player2Result: freezed == player2Result
          ? _value.player2Result
          : player2Result // ignore: cast_nullable_to_non_nullable
              as WordleeResult?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res>? get player1Result {
    if (_value.player1Result == null) {
      return null;
    }

    return $WordleeResultCopyWith<$Res>(_value.player1Result!, (value) {
      return _then(_value.copyWith(player1Result: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res>? get player2Result {
    if (_value.player2Result == null) {
      return null;
    }

    return $WordleeResultCopyWith<$Res>(_value.player2Result!, (value) {
      return _then(_value.copyWith(player2Result: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WordleeSession2PImpl extends WordleeSession2P {
  _$WordleeSession2PImpl(
      {required this.id,
      required this.isHost,
      required this.hasStarted,
      required this.time,
      required this.hasPlayer2Joined,
      required this.answerType,
      required this.player1Answer,
      required this.player2Answer,
      required this.player1Name,
      required this.player2Name,
      required this.player1Result,
      required this.player2Result,
      @TimestampConverter() required this.createdAt,
      final String? $type})
      : $type = $type ?? 'twoPlayer',
        super._();

  factory _$WordleeSession2PImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeSession2PImplFromJson(json);

  @override
  final String id;
  @override
  final bool isHost;
  @override
  final bool hasStarted;
  @override
  final WordleeTime time;
  @override
  final bool hasPlayer2Joined;
  @override
  final WordleeAnswerType answerType;
  @override
  final String? player1Answer;
  @override
  final String player2Answer;
  @override
  final String player1Name;
  @override
  final String? player2Name;
  @override
  final WordleeResult? player1Result;
  @override
  final WordleeResult? player2Result;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WordleeSession.twoPlayer(id: $id, isHost: $isHost, hasStarted: $hasStarted, time: $time, hasPlayer2Joined: $hasPlayer2Joined, answerType: $answerType, player1Answer: $player1Answer, player2Answer: $player2Answer, player1Name: $player1Name, player2Name: $player2Name, player1Result: $player1Result, player2Result: $player2Result, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeSession2PImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.hasStarted, hasStarted) ||
                other.hasStarted == hasStarted) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.hasPlayer2Joined, hasPlayer2Joined) ||
                other.hasPlayer2Joined == hasPlayer2Joined) &&
            (identical(other.answerType, answerType) ||
                other.answerType == answerType) &&
            (identical(other.player1Answer, player1Answer) ||
                other.player1Answer == player1Answer) &&
            (identical(other.player2Answer, player2Answer) ||
                other.player2Answer == player2Answer) &&
            (identical(other.player1Name, player1Name) ||
                other.player1Name == player1Name) &&
            (identical(other.player2Name, player2Name) ||
                other.player2Name == player2Name) &&
            (identical(other.player1Result, player1Result) ||
                other.player1Result == player1Result) &&
            (identical(other.player2Result, player2Result) ||
                other.player2Result == player2Result) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isHost,
      hasStarted,
      time,
      hasPlayer2Joined,
      answerType,
      player1Answer,
      player2Answer,
      player1Name,
      player2Name,
      player1Result,
      player2Result,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeSession2PImplCopyWith<_$WordleeSession2PImpl> get copyWith =>
      __$$WordleeSession2PImplCopyWithImpl<_$WordleeSession2PImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time, String answer) onePlayer,
    required TResult Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)
        twoPlayer,
  }) {
    return twoPlayer(
        id,
        isHost,
        hasStarted,
        time,
        hasPlayer2Joined,
        answerType,
        player1Answer,
        player2Answer,
        player1Name,
        player2Name,
        player1Result,
        player2Result,
        createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time, String answer)? onePlayer,
    TResult? Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)?
        twoPlayer,
  }) {
    return twoPlayer?.call(
        id,
        isHost,
        hasStarted,
        time,
        hasPlayer2Joined,
        answerType,
        player1Answer,
        player2Answer,
        player1Name,
        player2Name,
        player1Result,
        player2Result,
        createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time, String answer)? onePlayer,
    TResult Function(
            String id,
            bool isHost,
            bool hasStarted,
            WordleeTime time,
            bool hasPlayer2Joined,
            WordleeAnswerType answerType,
            String? player1Answer,
            String player2Answer,
            String player1Name,
            String? player2Name,
            WordleeResult? player1Result,
            WordleeResult? player2Result,
            @TimestampConverter() DateTime createdAt)?
        twoPlayer,
    required TResult orElse(),
  }) {
    if (twoPlayer != null) {
      return twoPlayer(
          id,
          isHost,
          hasStarted,
          time,
          hasPlayer2Joined,
          answerType,
          player1Answer,
          player2Answer,
          player1Name,
          player2Name,
          player1Result,
          player2Result,
          createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeSession1P value) onePlayer,
    required TResult Function(WordleeSession2P value) twoPlayer,
  }) {
    return twoPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeSession1P value)? onePlayer,
    TResult? Function(WordleeSession2P value)? twoPlayer,
  }) {
    return twoPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeSession1P value)? onePlayer,
    TResult Function(WordleeSession2P value)? twoPlayer,
    required TResult orElse(),
  }) {
    if (twoPlayer != null) {
      return twoPlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeSession2PImplToJson(
      this,
    );
  }
}

abstract class WordleeSession2P extends WordleeSession {
  factory WordleeSession2P(
          {required final String id,
          required final bool isHost,
          required final bool hasStarted,
          required final WordleeTime time,
          required final bool hasPlayer2Joined,
          required final WordleeAnswerType answerType,
          required final String? player1Answer,
          required final String player2Answer,
          required final String player1Name,
          required final String? player2Name,
          required final WordleeResult? player1Result,
          required final WordleeResult? player2Result,
          @TimestampConverter() required final DateTime createdAt}) =
      _$WordleeSession2PImpl;
  WordleeSession2P._() : super._();

  factory WordleeSession2P.fromJson(Map<String, dynamic> json) =
      _$WordleeSession2PImpl.fromJson;

  String get id;
  bool get isHost;
  bool get hasStarted;
  @override
  WordleeTime get time;
  bool get hasPlayer2Joined;
  WordleeAnswerType get answerType;
  String? get player1Answer;
  String get player2Answer;
  String get player1Name;
  String? get player2Name;
  WordleeResult? get player1Result;
  WordleeResult? get player2Result;
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$WordleeSession2PImplCopyWith<_$WordleeSession2PImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordleeResult _$WordleeResultFromJson(Map<String, dynamic> json) {
  return _WordleeResult.fromJson(json);
}

/// @nodoc
mixin _$WordleeResult {
  int get timeInSeconds => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  String? get finalGuess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleeResultCopyWith<WordleeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleeResultCopyWith<$Res> {
  factory $WordleeResultCopyWith(
          WordleeResult value, $Res Function(WordleeResult) then) =
      _$WordleeResultCopyWithImpl<$Res, WordleeResult>;
  @useResult
  $Res call(
      {int timeInSeconds, int attempts, bool isCorrect, String? finalGuess});
}

/// @nodoc
class _$WordleeResultCopyWithImpl<$Res, $Val extends WordleeResult>
    implements $WordleeResultCopyWith<$Res> {
  _$WordleeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeInSeconds = null,
    Object? attempts = null,
    Object? isCorrect = null,
    Object? finalGuess = freezed,
  }) {
    return _then(_value.copyWith(
      timeInSeconds: null == timeInSeconds
          ? _value.timeInSeconds
          : timeInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      finalGuess: freezed == finalGuess
          ? _value.finalGuess
          : finalGuess // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordleeResultImplCopyWith<$Res>
    implements $WordleeResultCopyWith<$Res> {
  factory _$$WordleeResultImplCopyWith(
          _$WordleeResultImpl value, $Res Function(_$WordleeResultImpl) then) =
      __$$WordleeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timeInSeconds, int attempts, bool isCorrect, String? finalGuess});
}

/// @nodoc
class __$$WordleeResultImplCopyWithImpl<$Res>
    extends _$WordleeResultCopyWithImpl<$Res, _$WordleeResultImpl>
    implements _$$WordleeResultImplCopyWith<$Res> {
  __$$WordleeResultImplCopyWithImpl(
      _$WordleeResultImpl _value, $Res Function(_$WordleeResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeInSeconds = null,
    Object? attempts = null,
    Object? isCorrect = null,
    Object? finalGuess = freezed,
  }) {
    return _then(_$WordleeResultImpl(
      timeInSeconds: null == timeInSeconds
          ? _value.timeInSeconds
          : timeInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      finalGuess: freezed == finalGuess
          ? _value.finalGuess
          : finalGuess // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleeResultImpl extends _WordleeResult {
  _$WordleeResultImpl(
      {required this.timeInSeconds,
      required this.attempts,
      required this.isCorrect,
      required this.finalGuess})
      : super._();

  factory _$WordleeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeResultImplFromJson(json);

  @override
  final int timeInSeconds;
  @override
  final int attempts;
  @override
  final bool isCorrect;
  @override
  final String? finalGuess;

  @override
  String toString() {
    return 'WordleeResult(timeInSeconds: $timeInSeconds, attempts: $attempts, isCorrect: $isCorrect, finalGuess: $finalGuess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeResultImpl &&
            (identical(other.timeInSeconds, timeInSeconds) ||
                other.timeInSeconds == timeInSeconds) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.finalGuess, finalGuess) ||
                other.finalGuess == finalGuess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timeInSeconds, attempts, isCorrect, finalGuess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeResultImplCopyWith<_$WordleeResultImpl> get copyWith =>
      __$$WordleeResultImplCopyWithImpl<_$WordleeResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeResultImplToJson(
      this,
    );
  }
}

abstract class _WordleeResult extends WordleeResult {
  factory _WordleeResult(
      {required final int timeInSeconds,
      required final int attempts,
      required final bool isCorrect,
      required final String? finalGuess}) = _$WordleeResultImpl;
  _WordleeResult._() : super._();

  factory _WordleeResult.fromJson(Map<String, dynamic> json) =
      _$WordleeResultImpl.fromJson;

  @override
  int get timeInSeconds;
  @override
  int get attempts;
  @override
  bool get isCorrect;
  @override
  String? get finalGuess;
  @override
  @JsonKey(ignore: true)
  _$$WordleeResultImplCopyWith<_$WordleeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
