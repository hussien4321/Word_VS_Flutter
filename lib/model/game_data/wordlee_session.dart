import 'package:freezed_annotation/freezed_annotation.dart';

part 'wordlee_session.freezed.dart';
part 'wordlee_session.g.dart';

@Freezed(fromJson: true)
sealed class WordleeSession with _$WordleeSession {
  const WordleeSession._();

  factory WordleeSession.onePlayer({
    required WordleeTime time,
    required String answer,
  }) = WordleeSession1P;

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory WordleeSession.twoPlayer({
    required String id,
    required bool isHost,
    required bool hasStarted,
    required WordleeTime time,
    required bool hasPlayer2Joined,
    required WordleeAnswerType answerType,
    required String? player1Answer,
    required String player2Answer,
    required String player1Name,
    required String? player2Name,
    required WordleeResult? player1Result,
    required WordleeResult? player2Result,
  }) = WordleeSession2P;

  factory WordleeSession.fromJson(Map<String, dynamic> json) =>
      _$WordleeSessionFromJson(json);
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

extension WordleeSession2PExt on WordleeSession2P {
  bool get isAwaitingPlayer2Data {
    return answerType.isCustom &&
        (player1Answer == null || player1Answer!.isEmpty);
  }

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

@JsonEnum()
enum WordleeAnswerType {
  random,
  custom;

  bool get isCustom {
    return this == WordleeAnswerType.custom;
  }

  String get label {
    return switch (this) {
      WordleeAnswerType.random => 'Random',
      WordleeAnswerType.custom => 'Custom'
    };
  }
}
