import 'package:wordle_vs/model/game_data/wordlee_config.dart';

abstract class GameLobbyRepository {
  Stream<WordleeSettings2P> getGameState(String roomId);

  Future<WordleeSettings2P> createGameLobby({required WordleeTime time});

  // Future<WordleeSettings2P> joinGameLobby({required String roomId});
}
