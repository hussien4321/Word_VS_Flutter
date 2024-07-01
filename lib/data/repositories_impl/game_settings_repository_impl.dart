import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordle_vs/data/repositories/game_settings_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/model/game_settings/game_settings.dart';

class GameSettingsRepositoryImpl extends GameSettingsRepository {
  GameSettingsRepositoryImpl({
    required this.sharedPreferences,
  });

  final SharedPreferences sharedPreferences;

  final String _playerNameKey = 'PLAYER_NAME_KEY';
  final String _timeKey = 'TIME_KEY';
  final String _answerTypeKey = 'ANSWER_TYPE_KEY';
  final String _numberOfWinsKey = 'NUMBER_OF_WINS_KEY';
  final String _numberOfDrawsKey = 'NUMBER_OF_DRAWS_KEY';
  final String _numberOfLossesKey = 'NUMBER_OF_LOSSES_KEY';

  @override
  GameSettings getSettings() {
    sharedPreferences.getKeys();

    final customTime = WordleeTime.values.firstWhereOrNull(
        (time) => time.name == sharedPreferences.get(_timeKey));
    final customAnswerType = WordleeAnswerType.values.firstWhereOrNull(
        (type) => type.name == sharedPreferences.get(_answerTypeKey));

    return GameSettings(
      playerName: sharedPreferences.getString(_playerNameKey) ?? "",
      time: customTime ?? WordleeTime.threeMin,
      answerType: customAnswerType ?? WordleeAnswerType.random,
      numberOfWins: sharedPreferences.getInt(_numberOfWinsKey) ?? 0,
      numberOfDraws: sharedPreferences.getInt(_numberOfDrawsKey) ?? 0,
      numberOfLosses: sharedPreferences.getInt(_numberOfLossesKey) ?? 0,
    );
  }

  @override
  Future<void> updateSettings(
      GameSettings Function(GameSettings) onSettings) async {
    final settings = onSettings(getSettings());
    await sharedPreferences.setString(_playerNameKey, settings.playerName);
    await sharedPreferences.setString(_timeKey, settings.time.name);
    await sharedPreferences.setString(_answerTypeKey, settings.answerType.name);
    await sharedPreferences.setInt(_numberOfWinsKey, settings.numberOfWins);
    await sharedPreferences.setInt(_numberOfDrawsKey, settings.numberOfDraws);
    await sharedPreferences.setInt(_numberOfLossesKey, settings.numberOfLosses);
  }
}
