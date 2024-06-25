import 'package:freezed_annotation/freezed_annotation.dart';

part 'wordlee_config.freezed.dart';
part 'wordlee_config.g.dart';

@Freezed(fromJson: true)
sealed class WordleeConfig with _$WordleeConfig {
  factory WordleeConfig.onePlayer({
    required WordleeSettings1P settings1p,
    WordleeResult? results,
  }) = WordleeConfig1P;

  factory WordleeConfig.twoPlayer({
    required String id,
    required WordleeSettings2P settings2p,
    WordleeResult? player1Results,
    WordleeResult? player2Results,
  }) = WordleeConfig2P;

  factory WordleeConfig.fromJson(Map<String, dynamic> json) =>
      _$WordleeConfigFromJson(json);
}

@Freezed(fromJson: true)
class WordleeResult with _$WordleeResult {
  factory WordleeResult({
    required int timeInSeconds,
    required int attempts,
    required bool isCorrect,
    required String? finalAnswer,
  }) = _WordleeResult;

  factory WordleeResult.fromJson(Map<String, dynamic> json) =>
      _$WordleeResultFromJson(json);
}

@Freezed(fromJson: true)
sealed class WordleeSettings with _$WordleeSettings {
  factory WordleeSettings.onePlayer({
    required WordleeTime time,
    required String answer,
  }) = WordleeSettings1P;

  factory WordleeSettings.twoPlayer({
    required String id,
    required bool isHost,
    required WordleeTime time,
    required bool hasPlayer2Joined,
    required String player1Answer,
    required String player2Answer,
  }) = WordleeSettings2P;

  factory WordleeSettings.fromJson(Map<String, dynamic> json) =>
      _$WordleeSettingsFromJson(json);
}

@JsonEnum()
enum WordleeTime {
  oneMin,
  threeMin,
  fiveMin;

  Duration get duration {
    return switch (this) {
      WordleeTime.oneMin => const Duration(minutes: 1),
      WordleeTime.threeMin => const Duration(minutes: 3),
      WordleeTime.fiveMin => const Duration(minutes: 5),
    };
  }

  String get label {
    return switch (this) {
      WordleeTime.oneMin => '1 min',
      WordleeTime.threeMin => '3 min',
      WordleeTime.fiveMin => '5 min',
    };
  }
}
