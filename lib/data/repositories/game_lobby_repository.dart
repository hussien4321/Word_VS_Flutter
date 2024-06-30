import 'package:wordle_vs/model/game_data/wordlee_session.dart';

abstract class GameLobbyRepository {
  Stream<WordleeSession2P> getGameState(String roomID, bool isHost);

  Future<WordleeSession2P> createLobby({
    required WordleeTime time,
    required WordleeAnswerType answerType,
    required String? customAnswer,
    required String name,
  });

  Future<WordleeSession2P?> joinLobby({
    required String roomID,
    required String? name,
  });

  Future<WordleeSession2P> submitP2Answer({
    required String roomID,
    required String answer,
  });

  Future<void> startGame({required WordleeSession2P session});

  Future<void> submitResults({
    required WordleeSession2P session,
    required WordleeResult result,
    required bool isHost,
  });
}
