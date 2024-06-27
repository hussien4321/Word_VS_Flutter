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
  const WordleeResult._();

  factory WordleeResult({
    required int timeInSeconds,
    required int attempts,
    required bool isCorrect,
    required String? finalGuess,
  }) = _WordleeResult;

  factory WordleeResult.fromJson(Map<String, dynamic> json) =>
      _$WordleeResultFromJson(json);
}

@Freezed(fromJson: true)
sealed class WordleeSettings with _$WordleeSettings {
  const WordleeSettings._();

  factory WordleeSettings.onePlayer({
    required WordleeTime time,
    required String answer,
  }) = WordleeSettings1P;

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory WordleeSettings.twoPlayer({
    required String id,
    required bool isHost,
    required bool hasStarted,
    required WordleeTime time,
    required bool hasPlayer2Joined,
    required String player1Answer,
    required String player2Answer,
    required WordleeResult? player1Result,
    required WordleeResult? player2Result,
  }) = WordleeSettings2P;

  factory WordleeSettings.fromJson(Map<String, dynamic> json) =>
      _$WordleeSettingsFromJson(json);
}

enum WordleeGame2pResult {
  win,
  loss,
  draw;

  WordleeGame2pResult maybeFlip(bool shouldFlip) {
    if (shouldFlip) {
      switch (this) {
        case WordleeGame2pResult.win:
          return WordleeGame2pResult.loss;
        case WordleeGame2pResult.loss:
          return WordleeGame2pResult.win;
        default:
          return WordleeGame2pResult.draw;
      }
    }
    return this;
  }
}

extension WordleeSettings2PExt on WordleeSettings2P {
  bool get isComplete {
    return player1Result != null && player2Result != null;
  }

  WordleeGame2pResult get outcome {
    final shouldFlip = !isHost;
    final player1Result = this.player1Result!;
    final player2Result = this.player2Result!;

    if (player1Result.isCorrect) {
      if (player2Result.isCorrect) {
        if (player1Result.attempts < player2Result.attempts) {
          return WordleeGame2pResult.win.maybeFlip(shouldFlip);
        } else if (player1Result.attempts > player2Result.attempts) {
          return WordleeGame2pResult.loss.maybeFlip(shouldFlip);
        } else {
          if (player1Result.timeInSeconds < player2Result.timeInSeconds) {
            return WordleeGame2pResult.win.maybeFlip(shouldFlip);
          } else if (player1Result.timeInSeconds >
              player2Result.timeInSeconds) {
            return WordleeGame2pResult.loss.maybeFlip(shouldFlip);
          } else {
            return WordleeGame2pResult.draw.maybeFlip(shouldFlip);
          }
        }
      } else {
        return WordleeGame2pResult.win.maybeFlip(shouldFlip);
      }
    } else {
      if (player2Result.isCorrect) {
        return WordleeGame2pResult.loss.maybeFlip(shouldFlip);
      } else {
        return WordleeGame2pResult.draw.maybeFlip(shouldFlip);
      }
    }
  }
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
