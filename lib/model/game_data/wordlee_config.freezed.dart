// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wordlee_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordleeConfig _$WordleeConfigFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'onePlayer':
      return WordleeConfig1P.fromJson(json);
    case 'twoPlayer':
      return WordleeConfig2P.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WordleeConfig',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WordleeConfig {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WordleeSettings1P settings1p, WordleeResult? results)
        onePlayer,
    required TResult Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)
        twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeSettings1P settings1p, WordleeResult? results)?
        onePlayer,
    TResult? Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)?
        twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeSettings1P settings1p, WordleeResult? results)?
        onePlayer,
    TResult Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)?
        twoPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeConfig1P value) onePlayer,
    required TResult Function(WordleeConfig2P value) twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeConfig1P value)? onePlayer,
    TResult? Function(WordleeConfig2P value)? twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeConfig1P value)? onePlayer,
    TResult Function(WordleeConfig2P value)? twoPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleeConfigCopyWith<$Res> {
  factory $WordleeConfigCopyWith(
          WordleeConfig value, $Res Function(WordleeConfig) then) =
      _$WordleeConfigCopyWithImpl<$Res, WordleeConfig>;
}

/// @nodoc
class _$WordleeConfigCopyWithImpl<$Res, $Val extends WordleeConfig>
    implements $WordleeConfigCopyWith<$Res> {
  _$WordleeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WordleeConfig1PImplCopyWith<$Res> {
  factory _$$WordleeConfig1PImplCopyWith(_$WordleeConfig1PImpl value,
          $Res Function(_$WordleeConfig1PImpl) then) =
      __$$WordleeConfig1PImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordleeSettings1P settings1p, WordleeResult? results});

  $WordleeResultCopyWith<$Res>? get results;
}

/// @nodoc
class __$$WordleeConfig1PImplCopyWithImpl<$Res>
    extends _$WordleeConfigCopyWithImpl<$Res, _$WordleeConfig1PImpl>
    implements _$$WordleeConfig1PImplCopyWith<$Res> {
  __$$WordleeConfig1PImplCopyWithImpl(
      _$WordleeConfig1PImpl _value, $Res Function(_$WordleeConfig1PImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings1p = freezed,
    Object? results = freezed,
  }) {
    return _then(_$WordleeConfig1PImpl(
      settings1p: freezed == settings1p
          ? _value.settings1p
          : settings1p // ignore: cast_nullable_to_non_nullable
              as WordleeSettings1P,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as WordleeResult?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $WordleeResultCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleeConfig1PImpl implements WordleeConfig1P {
  _$WordleeConfig1PImpl(
      {required this.settings1p, this.results, final String? $type})
      : $type = $type ?? 'onePlayer';

  factory _$WordleeConfig1PImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeConfig1PImplFromJson(json);

  @override
  final WordleeSettings1P settings1p;
  @override
  final WordleeResult? results;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WordleeConfig.onePlayer(settings1p: $settings1p, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeConfig1PImpl &&
            const DeepCollectionEquality()
                .equals(other.settings1p, settings1p) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(settings1p), results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeConfig1PImplCopyWith<_$WordleeConfig1PImpl> get copyWith =>
      __$$WordleeConfig1PImplCopyWithImpl<_$WordleeConfig1PImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WordleeSettings1P settings1p, WordleeResult? results)
        onePlayer,
    required TResult Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)
        twoPlayer,
  }) {
    return onePlayer(settings1p, results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeSettings1P settings1p, WordleeResult? results)?
        onePlayer,
    TResult? Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)?
        twoPlayer,
  }) {
    return onePlayer?.call(settings1p, results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeSettings1P settings1p, WordleeResult? results)?
        onePlayer,
    TResult Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)?
        twoPlayer,
    required TResult orElse(),
  }) {
    if (onePlayer != null) {
      return onePlayer(settings1p, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeConfig1P value) onePlayer,
    required TResult Function(WordleeConfig2P value) twoPlayer,
  }) {
    return onePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeConfig1P value)? onePlayer,
    TResult? Function(WordleeConfig2P value)? twoPlayer,
  }) {
    return onePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeConfig1P value)? onePlayer,
    TResult Function(WordleeConfig2P value)? twoPlayer,
    required TResult orElse(),
  }) {
    if (onePlayer != null) {
      return onePlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeConfig1PImplToJson(
      this,
    );
  }
}

abstract class WordleeConfig1P implements WordleeConfig {
  factory WordleeConfig1P(
      {required final WordleeSettings1P settings1p,
      final WordleeResult? results}) = _$WordleeConfig1PImpl;

  factory WordleeConfig1P.fromJson(Map<String, dynamic> json) =
      _$WordleeConfig1PImpl.fromJson;

  WordleeSettings1P get settings1p;
  WordleeResult? get results;
  @JsonKey(ignore: true)
  _$$WordleeConfig1PImplCopyWith<_$WordleeConfig1PImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WordleeConfig2PImplCopyWith<$Res> {
  factory _$$WordleeConfig2PImplCopyWith(_$WordleeConfig2PImpl value,
          $Res Function(_$WordleeConfig2PImpl) then) =
      __$$WordleeConfig2PImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      WordleeSettings2P settings2p,
      WordleeResult? player1Results,
      WordleeResult? player2Results});

  $WordleeResultCopyWith<$Res>? get player1Results;
  $WordleeResultCopyWith<$Res>? get player2Results;
}

/// @nodoc
class __$$WordleeConfig2PImplCopyWithImpl<$Res>
    extends _$WordleeConfigCopyWithImpl<$Res, _$WordleeConfig2PImpl>
    implements _$$WordleeConfig2PImplCopyWith<$Res> {
  __$$WordleeConfig2PImplCopyWithImpl(
      _$WordleeConfig2PImpl _value, $Res Function(_$WordleeConfig2PImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settings2p = freezed,
    Object? player1Results = freezed,
    Object? player2Results = freezed,
  }) {
    return _then(_$WordleeConfig2PImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      settings2p: freezed == settings2p
          ? _value.settings2p
          : settings2p // ignore: cast_nullable_to_non_nullable
              as WordleeSettings2P,
      player1Results: freezed == player1Results
          ? _value.player1Results
          : player1Results // ignore: cast_nullable_to_non_nullable
              as WordleeResult?,
      player2Results: freezed == player2Results
          ? _value.player2Results
          : player2Results // ignore: cast_nullable_to_non_nullable
              as WordleeResult?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res>? get player1Results {
    if (_value.player1Results == null) {
      return null;
    }

    return $WordleeResultCopyWith<$Res>(_value.player1Results!, (value) {
      return _then(_value.copyWith(player1Results: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordleeResultCopyWith<$Res>? get player2Results {
    if (_value.player2Results == null) {
      return null;
    }

    return $WordleeResultCopyWith<$Res>(_value.player2Results!, (value) {
      return _then(_value.copyWith(player2Results: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleeConfig2PImpl implements WordleeConfig2P {
  _$WordleeConfig2PImpl(
      {required this.id,
      required this.settings2p,
      this.player1Results,
      this.player2Results,
      final String? $type})
      : $type = $type ?? 'twoPlayer';

  factory _$WordleeConfig2PImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeConfig2PImplFromJson(json);

  @override
  final String id;
  @override
  final WordleeSettings2P settings2p;
  @override
  final WordleeResult? player1Results;
  @override
  final WordleeResult? player2Results;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WordleeConfig.twoPlayer(id: $id, settings2p: $settings2p, player1Results: $player1Results, player2Results: $player2Results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeConfig2PImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.settings2p, settings2p) &&
            (identical(other.player1Results, player1Results) ||
                other.player1Results == player1Results) &&
            (identical(other.player2Results, player2Results) ||
                other.player2Results == player2Results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(settings2p),
      player1Results,
      player2Results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeConfig2PImplCopyWith<_$WordleeConfig2PImpl> get copyWith =>
      __$$WordleeConfig2PImplCopyWithImpl<_$WordleeConfig2PImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WordleeSettings1P settings1p, WordleeResult? results)
        onePlayer,
    required TResult Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)
        twoPlayer,
  }) {
    return twoPlayer(id, settings2p, player1Results, player2Results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeSettings1P settings1p, WordleeResult? results)?
        onePlayer,
    TResult? Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)?
        twoPlayer,
  }) {
    return twoPlayer?.call(id, settings2p, player1Results, player2Results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeSettings1P settings1p, WordleeResult? results)?
        onePlayer,
    TResult Function(String id, WordleeSettings2P settings2p,
            WordleeResult? player1Results, WordleeResult? player2Results)?
        twoPlayer,
    required TResult orElse(),
  }) {
    if (twoPlayer != null) {
      return twoPlayer(id, settings2p, player1Results, player2Results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeConfig1P value) onePlayer,
    required TResult Function(WordleeConfig2P value) twoPlayer,
  }) {
    return twoPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeConfig1P value)? onePlayer,
    TResult? Function(WordleeConfig2P value)? twoPlayer,
  }) {
    return twoPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeConfig1P value)? onePlayer,
    TResult Function(WordleeConfig2P value)? twoPlayer,
    required TResult orElse(),
  }) {
    if (twoPlayer != null) {
      return twoPlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeConfig2PImplToJson(
      this,
    );
  }
}

abstract class WordleeConfig2P implements WordleeConfig {
  factory WordleeConfig2P(
      {required final String id,
      required final WordleeSettings2P settings2p,
      final WordleeResult? player1Results,
      final WordleeResult? player2Results}) = _$WordleeConfig2PImpl;

  factory WordleeConfig2P.fromJson(Map<String, dynamic> json) =
      _$WordleeConfig2PImpl.fromJson;

  String get id;
  WordleeSettings2P get settings2p;
  WordleeResult? get player1Results;
  WordleeResult? get player2Results;
  @JsonKey(ignore: true)
  _$$WordleeConfig2PImplCopyWith<_$WordleeConfig2PImpl> get copyWith =>
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
  String? get finalAnswer => throw _privateConstructorUsedError;

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
      {int timeInSeconds, int attempts, bool isCorrect, String? finalAnswer});
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
    Object? finalAnswer = freezed,
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
      finalAnswer: freezed == finalAnswer
          ? _value.finalAnswer
          : finalAnswer // ignore: cast_nullable_to_non_nullable
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
      {int timeInSeconds, int attempts, bool isCorrect, String? finalAnswer});
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
    Object? finalAnswer = freezed,
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
      finalAnswer: freezed == finalAnswer
          ? _value.finalAnswer
          : finalAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleeResultImpl implements _WordleeResult {
  _$WordleeResultImpl(
      {required this.timeInSeconds,
      required this.attempts,
      required this.isCorrect,
      required this.finalAnswer});

  factory _$WordleeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeResultImplFromJson(json);

  @override
  final int timeInSeconds;
  @override
  final int attempts;
  @override
  final bool isCorrect;
  @override
  final String? finalAnswer;

  @override
  String toString() {
    return 'WordleeResult(timeInSeconds: $timeInSeconds, attempts: $attempts, isCorrect: $isCorrect, finalAnswer: $finalAnswer)';
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
            (identical(other.finalAnswer, finalAnswer) ||
                other.finalAnswer == finalAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timeInSeconds, attempts, isCorrect, finalAnswer);

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

abstract class _WordleeResult implements WordleeResult {
  factory _WordleeResult(
      {required final int timeInSeconds,
      required final int attempts,
      required final bool isCorrect,
      required final String? finalAnswer}) = _$WordleeResultImpl;

  factory _WordleeResult.fromJson(Map<String, dynamic> json) =
      _$WordleeResultImpl.fromJson;

  @override
  int get timeInSeconds;
  @override
  int get attempts;
  @override
  bool get isCorrect;
  @override
  String? get finalAnswer;
  @override
  @JsonKey(ignore: true)
  _$$WordleeResultImplCopyWith<_$WordleeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordleeSettings _$WordleeSettingsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'onePlayer':
      return WordleeSettings1P.fromJson(json);
    case 'twoPlayer':
      return WordleeSettings2P.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WordleeSettings',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WordleeSettings {
  WordleeTime get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time, String answer) onePlayer,
    required TResult Function(bool isHost, WordleeTime time,
            String player1Answer, String player2Answer)
        twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time, String answer)? onePlayer,
    TResult? Function(bool isHost, WordleeTime time, String player1Answer,
            String player2Answer)?
        twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time, String answer)? onePlayer,
    TResult Function(bool isHost, WordleeTime time, String player1Answer,
            String player2Answer)?
        twoPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeSettings1P value) onePlayer,
    required TResult Function(WordleeSettings2P value) twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeSettings1P value)? onePlayer,
    TResult? Function(WordleeSettings2P value)? twoPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeSettings1P value)? onePlayer,
    TResult Function(WordleeSettings2P value)? twoPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleeSettingsCopyWith<WordleeSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleeSettingsCopyWith<$Res> {
  factory $WordleeSettingsCopyWith(
          WordleeSettings value, $Res Function(WordleeSettings) then) =
      _$WordleeSettingsCopyWithImpl<$Res, WordleeSettings>;
  @useResult
  $Res call({WordleeTime time});
}

/// @nodoc
class _$WordleeSettingsCopyWithImpl<$Res, $Val extends WordleeSettings>
    implements $WordleeSettingsCopyWith<$Res> {
  _$WordleeSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$WordleeSettings1PImplCopyWith<$Res>
    implements $WordleeSettingsCopyWith<$Res> {
  factory _$$WordleeSettings1PImplCopyWith(_$WordleeSettings1PImpl value,
          $Res Function(_$WordleeSettings1PImpl) then) =
      __$$WordleeSettings1PImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WordleeTime time, String answer});
}

/// @nodoc
class __$$WordleeSettings1PImplCopyWithImpl<$Res>
    extends _$WordleeSettingsCopyWithImpl<$Res, _$WordleeSettings1PImpl>
    implements _$$WordleeSettings1PImplCopyWith<$Res> {
  __$$WordleeSettings1PImplCopyWithImpl(_$WordleeSettings1PImpl _value,
      $Res Function(_$WordleeSettings1PImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? answer = null,
  }) {
    return _then(_$WordleeSettings1PImpl(
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
class _$WordleeSettings1PImpl implements WordleeSettings1P {
  _$WordleeSettings1PImpl(
      {required this.time, required this.answer, final String? $type})
      : $type = $type ?? 'onePlayer';

  factory _$WordleeSettings1PImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeSettings1PImplFromJson(json);

  @override
  final WordleeTime time;
  @override
  final String answer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WordleeSettings.onePlayer(time: $time, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeSettings1PImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeSettings1PImplCopyWith<_$WordleeSettings1PImpl> get copyWith =>
      __$$WordleeSettings1PImplCopyWithImpl<_$WordleeSettings1PImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time, String answer) onePlayer,
    required TResult Function(bool isHost, WordleeTime time,
            String player1Answer, String player2Answer)
        twoPlayer,
  }) {
    return onePlayer(time, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time, String answer)? onePlayer,
    TResult? Function(bool isHost, WordleeTime time, String player1Answer,
            String player2Answer)?
        twoPlayer,
  }) {
    return onePlayer?.call(time, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time, String answer)? onePlayer,
    TResult Function(bool isHost, WordleeTime time, String player1Answer,
            String player2Answer)?
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
    required TResult Function(WordleeSettings1P value) onePlayer,
    required TResult Function(WordleeSettings2P value) twoPlayer,
  }) {
    return onePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeSettings1P value)? onePlayer,
    TResult? Function(WordleeSettings2P value)? twoPlayer,
  }) {
    return onePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeSettings1P value)? onePlayer,
    TResult Function(WordleeSettings2P value)? twoPlayer,
    required TResult orElse(),
  }) {
    if (onePlayer != null) {
      return onePlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeSettings1PImplToJson(
      this,
    );
  }
}

abstract class WordleeSettings1P implements WordleeSettings {
  factory WordleeSettings1P(
      {required final WordleeTime time,
      required final String answer}) = _$WordleeSettings1PImpl;

  factory WordleeSettings1P.fromJson(Map<String, dynamic> json) =
      _$WordleeSettings1PImpl.fromJson;

  @override
  WordleeTime get time;
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$WordleeSettings1PImplCopyWith<_$WordleeSettings1PImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WordleeSettings2PImplCopyWith<$Res>
    implements $WordleeSettingsCopyWith<$Res> {
  factory _$$WordleeSettings2PImplCopyWith(_$WordleeSettings2PImpl value,
          $Res Function(_$WordleeSettings2PImpl) then) =
      __$$WordleeSettings2PImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isHost,
      WordleeTime time,
      String player1Answer,
      String player2Answer});
}

/// @nodoc
class __$$WordleeSettings2PImplCopyWithImpl<$Res>
    extends _$WordleeSettingsCopyWithImpl<$Res, _$WordleeSettings2PImpl>
    implements _$$WordleeSettings2PImplCopyWith<$Res> {
  __$$WordleeSettings2PImplCopyWithImpl(_$WordleeSettings2PImpl _value,
      $Res Function(_$WordleeSettings2PImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHost = null,
    Object? time = null,
    Object? player1Answer = null,
    Object? player2Answer = null,
  }) {
    return _then(_$WordleeSettings2PImpl(
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      player1Answer: null == player1Answer
          ? _value.player1Answer
          : player1Answer // ignore: cast_nullable_to_non_nullable
              as String,
      player2Answer: null == player2Answer
          ? _value.player2Answer
          : player2Answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleeSettings2PImpl implements WordleeSettings2P {
  _$WordleeSettings2PImpl(
      {required this.isHost,
      required this.time,
      required this.player1Answer,
      required this.player2Answer,
      final String? $type})
      : $type = $type ?? 'twoPlayer';

  factory _$WordleeSettings2PImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleeSettings2PImplFromJson(json);

  @override
  final bool isHost;
  @override
  final WordleeTime time;
  @override
  final String player1Answer;
  @override
  final String player2Answer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WordleeSettings.twoPlayer(isHost: $isHost, time: $time, player1Answer: $player1Answer, player2Answer: $player2Answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleeSettings2PImpl &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.player1Answer, player1Answer) ||
                other.player1Answer == player1Answer) &&
            (identical(other.player2Answer, player2Answer) ||
                other.player2Answer == player2Answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isHost, time, player1Answer, player2Answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleeSettings2PImplCopyWith<_$WordleeSettings2PImpl> get copyWith =>
      __$$WordleeSettings2PImplCopyWithImpl<_$WordleeSettings2PImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordleeTime time, String answer) onePlayer,
    required TResult Function(bool isHost, WordleeTime time,
            String player1Answer, String player2Answer)
        twoPlayer,
  }) {
    return twoPlayer(isHost, time, player1Answer, player2Answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordleeTime time, String answer)? onePlayer,
    TResult? Function(bool isHost, WordleeTime time, String player1Answer,
            String player2Answer)?
        twoPlayer,
  }) {
    return twoPlayer?.call(isHost, time, player1Answer, player2Answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordleeTime time, String answer)? onePlayer,
    TResult Function(bool isHost, WordleeTime time, String player1Answer,
            String player2Answer)?
        twoPlayer,
    required TResult orElse(),
  }) {
    if (twoPlayer != null) {
      return twoPlayer(isHost, time, player1Answer, player2Answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WordleeSettings1P value) onePlayer,
    required TResult Function(WordleeSettings2P value) twoPlayer,
  }) {
    return twoPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WordleeSettings1P value)? onePlayer,
    TResult? Function(WordleeSettings2P value)? twoPlayer,
  }) {
    return twoPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WordleeSettings1P value)? onePlayer,
    TResult Function(WordleeSettings2P value)? twoPlayer,
    required TResult orElse(),
  }) {
    if (twoPlayer != null) {
      return twoPlayer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleeSettings2PImplToJson(
      this,
    );
  }
}

abstract class WordleeSettings2P implements WordleeSettings {
  factory WordleeSettings2P(
      {required final bool isHost,
      required final WordleeTime time,
      required final String player1Answer,
      required final String player2Answer}) = _$WordleeSettings2PImpl;

  factory WordleeSettings2P.fromJson(Map<String, dynamic> json) =
      _$WordleeSettings2PImpl.fromJson;

  bool get isHost;
  @override
  WordleeTime get time;
  String get player1Answer;
  String get player2Answer;
  @override
  @JsonKey(ignore: true)
  _$$WordleeSettings2PImplCopyWith<_$WordleeSettings2PImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
