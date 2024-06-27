import 'package:wordle_vs/model/game_data/wordlee_config.dart';

abstract class GameLobbyRepository {
  Stream<WordleeSettings2P> getGameState(String roomID, bool isHost);

  Future<WordleeSettings2P> createLobby({required WordleeTime time});

  Future<WordleeSettings2P?> joinLobby({required String roomID});

  Future<void> startGame({required WordleeSettings2P settings});

  Future<void> submitResults({
    required WordleeSettings2P settings,
    required WordleeResult result,
    required bool isHost,
  });
}
