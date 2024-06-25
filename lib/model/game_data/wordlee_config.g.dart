// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordlee_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordleeConfig1PImpl _$$WordleeConfig1PImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleeConfig1PImpl(
      settings1p: WordleeSettings1P.fromJson(
          json['settings1p'] as Map<String, dynamic>),
      results: json['results'] == null
          ? null
          : WordleeResult.fromJson(json['results'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WordleeConfig1PImplToJson(
        _$WordleeConfig1PImpl instance) =>
    <String, dynamic>{
      'settings1p': instance.settings1p,
      'results': instance.results,
      'runtimeType': instance.$type,
    };

_$WordleeConfig2PImpl _$$WordleeConfig2PImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleeConfig2PImpl(
      id: json['id'] as String,
      settings2p: WordleeSettings2P.fromJson(
          json['settings2p'] as Map<String, dynamic>),
      player1Results: json['player1Results'] == null
          ? null
          : WordleeResult.fromJson(
              json['player1Results'] as Map<String, dynamic>),
      player2Results: json['player2Results'] == null
          ? null
          : WordleeResult.fromJson(
              json['player2Results'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WordleeConfig2PImplToJson(
        _$WordleeConfig2PImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'settings2p': instance.settings2p,
      'player1Results': instance.player1Results,
      'player2Results': instance.player2Results,
      'runtimeType': instance.$type,
    };

_$WordleeResultImpl _$$WordleeResultImplFromJson(Map<String, dynamic> json) =>
    _$WordleeResultImpl(
      timeInSeconds: (json['timeInSeconds'] as num).toInt(),
      attempts: (json['attempts'] as num).toInt(),
      isCorrect: json['isCorrect'] as bool,
      finalAnswer: json['finalAnswer'] as String?,
    );

Map<String, dynamic> _$$WordleeResultImplToJson(_$WordleeResultImpl instance) =>
    <String, dynamic>{
      'timeInSeconds': instance.timeInSeconds,
      'attempts': instance.attempts,
      'isCorrect': instance.isCorrect,
      'finalAnswer': instance.finalAnswer,
    };

_$WordleeSettings1PImpl _$$WordleeSettings1PImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleeSettings1PImpl(
      time: $enumDecode(_$WordleeTimeEnumMap, json['time']),
      answer: json['answer'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WordleeSettings1PImplToJson(
        _$WordleeSettings1PImpl instance) =>
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

_$WordleeSettings2PImpl _$$WordleeSettings2PImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleeSettings2PImpl(
      id: json['id'] as String,
      isHost: json['isHost'] as bool,
      time: $enumDecode(_$WordleeTimeEnumMap, json['time']),
      hasPlayer2Joined: json['hasPlayer2Joined'] as bool,
      player1Answer: json['player1Answer'] as String,
      player2Answer: json['player2Answer'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WordleeSettings2PImplToJson(
        _$WordleeSettings2PImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isHost': instance.isHost,
      'time': _$WordleeTimeEnumMap[instance.time]!,
      'hasPlayer2Joined': instance.hasPlayer2Joined,
      'player1Answer': instance.player1Answer,
      'player2Answer': instance.player2Answer,
      'runtimeType': instance.$type,
    };
