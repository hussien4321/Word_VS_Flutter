import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';

part 'game_settings.freezed.dart';

@freezed
class GameSettings with _$GameSettings {
  factory GameSettings({
    required String playerName,
    required WordleeTime time,
    required WordleeAnswerType answerType,
    required int numberOfWins,
    required int numberOfDraws,
    required int numberOfLosses,
  }) = _GameSettings;
}
