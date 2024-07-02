// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordlee_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordleeSession1PImpl _$$WordleeSession1PImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleeSession1PImpl(
      time: $enumDecode(_$WordleeTimeEnumMap, json['time']),
      answer: json['answer'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WordleeSession1PImplToJson(
        _$WordleeSession1PImpl instance) =>
    <String, dynamic>{
      'time': _$WordleeTimeEnumMap[instance.time]!,
      'answer': instance.answer,
      'runtimeType': instance.$type,
    };

const _$WordleeTimeEnumMap = {
  WordleeTime.oneMin: 'oneMin',
  WordleeTime.threeMin: 'threeMin',
  WordleeTime.fiveMin: 'fiveMin',
};

_$WordleeSession2PImpl _$$WordleeSession2PImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleeSession2PImpl(
      id: json['id'] as String,
      isHost: json['isHost'] as bool,
      hasStarted: json['hasStarted'] as bool,
      time: $enumDecode(_$WordleeTimeEnumMap, json['time']),
      hasPlayer2Joined: json['hasPlayer2Joined'] as bool,
      answerType: $enumDecode(_$WordleeAnswerTypeEnumMap, json['answerType']),
      player1Answer: json['player1Answer'] as String?,
      player2Answer: json['player2Answer'] as String,
      player1Name: json['player1Name'] as String,
      player2Name: json['player2Name'] as String?,
      player1Result: json['player1Result'] == null
          ? null
          : WordleeResult.fromJson(
              json['player1Result'] as Map<String, dynamic>),
      player2Result: json['player2Result'] == null
          ? null
          : WordleeResult.fromJson(
              json['player2Result'] as Map<String, dynamic>),
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WordleeSession2PImplToJson(
        _$WordleeSession2PImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isHost': instance.isHost,
      'hasStarted': instance.hasStarted,
      'time': _$WordleeTimeEnumMap[instance.time]!,
      'hasPlayer2Joined': instance.hasPlayer2Joined,
      'answerType': _$WordleeAnswerTypeEnumMap[instance.answerType]!,
      'player1Answer': instance.player1Answer,
      'player2Answer': instance.player2Answer,
      'player1Name': instance.player1Name,
      'player2Name': instance.player2Name,
      'player1Result': instance.player1Result?.toJson(),
      'player2Result': instance.player2Result?.toJson(),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'runtimeType': instance.$type,
    };

const _$WordleeAnswerTypeEnumMap = {
  WordleeAnswerType.random: 'random',
  WordleeAnswerType.custom: 'custom',
};

_$WordleeResultImpl _$$WordleeResultImplFromJson(Map<String, dynamic> json) =>
    _$WordleeResultImpl(
      timeInSeconds: (json['timeInSeconds'] as num).toInt(),
      attempts: (json['attempts'] as num).toInt(),
      isCorrect: json['isCorrect'] as bool,
      finalGuess: json['finalGuess'] as String?,
    );

Map<String, dynamic> _$$WordleeResultImplToJson(_$WordleeResultImpl instance) =>
    <String, dynamic>{
      'timeInSeconds': instance.timeInSeconds,
      'attempts': instance.attempts,
      'isCorrect': instance.isCorrect,
      'finalGuess': instance.finalGuess,
    };
