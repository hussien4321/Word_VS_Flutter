import 'package:wordle_vs/model/game_settings/game_settings.dart';

abstract class GameSettingsRepository {
  GameSettings getSettings();

  Future<void> updateSettings(GameSettings Function(GameSettings) onSettings);
}
