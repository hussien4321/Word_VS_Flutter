// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameSettings {
  String get playerName => throw _privateConstructorUsedError;
  WordleeTime get time => throw _privateConstructorUsedError;
  WordleeAnswerType get answerType => throw _privateConstructorUsedError;
  int get numberOfWins => throw _privateConstructorUsedError;
  int get numberOfDraws => throw _privateConstructorUsedError;
  int get numberOfLosses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSettingsCopyWith<GameSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSettingsCopyWith<$Res> {
  factory $GameSettingsCopyWith(
          GameSettings value, $Res Function(GameSettings) then) =
      _$GameSettingsCopyWithImpl<$Res, GameSettings>;
  @useResult
  $Res call(
      {String playerName,
      WordleeTime time,
      WordleeAnswerType answerType,
      int numberOfWins,
      int numberOfDraws,
      int numberOfLosses});
}

/// @nodoc
class _$GameSettingsCopyWithImpl<$Res, $Val extends GameSettings>
    implements $GameSettingsCopyWith<$Res> {
  _$GameSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? time = null,
    Object? answerType = null,
    Object? numberOfWins = null,
    Object? numberOfDraws = null,
    Object? numberOfLosses = null,
  }) {
    return _then(_value.copyWith(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as WordleeAnswerType,
      numberOfWins: null == numberOfWins
          ? _value.numberOfWins
          : numberOfWins // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDraws: null == numberOfDraws
          ? _value.numberOfDraws
          : numberOfDraws // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfLosses: null == numberOfLosses
          ? _value.numberOfLosses
          : numberOfLosses // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameSettingsImplCopyWith<$Res>
    implements $GameSettingsCopyWith<$Res> {
  factory _$$GameSettingsImplCopyWith(
          _$GameSettingsImpl value, $Res Function(_$GameSettingsImpl) then) =
      __$$GameSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playerName,
      WordleeTime time,
      WordleeAnswerType answerType,
      int numberOfWins,
      int numberOfDraws,
      int numberOfLosses});
}

/// @nodoc
class __$$GameSettingsImplCopyWithImpl<$Res>
    extends _$GameSettingsCopyWithImpl<$Res, _$GameSettingsImpl>
    implements _$$GameSettingsImplCopyWith<$Res> {
  __$$GameSettingsImplCopyWithImpl(
      _$GameSettingsImpl _value, $Res Function(_$GameSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? time = null,
    Object? answerType = null,
    Object? numberOfWins = null,
    Object? numberOfDraws = null,
    Object? numberOfLosses = null,
  }) {
    return _then(_$GameSettingsImpl(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as WordleeAnswerType,
      numberOfWins: null == numberOfWins
          ? _value.numberOfWins
          : numberOfWins // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDraws: null == numberOfDraws
          ? _value.numberOfDraws
          : numberOfDraws // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfLosses: null == numberOfLosses
          ? _value.numberOfLosses
          : numberOfLosses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameSettingsImpl implements _GameSettings {
  _$GameSettingsImpl(
      {required this.playerName,
      required this.time,
      required this.answerType,
      required this.numberOfWins,
      required this.numberOfDraws,
      required this.numberOfLosses});

  @override
  final String playerName;
  @override
  final WordleeTime time;
  @override
  final WordleeAnswerType answerType;
  @override
  final int numberOfWins;
  @override
  final int numberOfDraws;
  @override
  final int numberOfLosses;

  @override
  String toString() {
    return 'GameSettings(playerName: $playerName, time: $time, answerType: $answerType, numberOfWins: $numberOfWins, numberOfDraws: $numberOfDraws, numberOfLosses: $numberOfLosses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSettingsImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.answerType, answerType) ||
                other.answerType == answerType) &&
            (identical(other.numberOfWins, numberOfWins) ||
                other.numberOfWins == numberOfWins) &&
            (identical(other.numberOfDraws, numberOfDraws) ||
                other.numberOfDraws == numberOfDraws) &&
            (identical(other.numberOfLosses, numberOfLosses) ||
                other.numberOfLosses == numberOfLosses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerName, time, answerType,
      numberOfWins, numberOfDraws, numberOfLosses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSettingsImplCopyWith<_$GameSettingsImpl> get copyWith =>
      __$$GameSettingsImplCopyWithImpl<_$GameSettingsImpl>(this, _$identity);
}

abstract class _GameSettings implements GameSettings {
  factory _GameSettings(
      {required final String playerName,
      required final WordleeTime time,
      required final WordleeAnswerType answerType,
      required final int numberOfWins,
      required final int numberOfDraws,
      required final int numberOfLosses}) = _$GameSettingsImpl;

  @override
  String get playerName;
  @override
  WordleeTime get time;
  @override
  WordleeAnswerType get answerType;
  @override
  int get numberOfWins;
  @override
  int get numberOfDraws;
  @override
  int get numberOfLosses;
  @override
  @JsonKey(ignore: true)
  _$$GameSettingsImplCopyWith<_$GameSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
