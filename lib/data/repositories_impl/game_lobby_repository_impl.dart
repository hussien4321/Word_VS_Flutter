import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/utils/functions.dart';

class GameLobbyRepositoryImpl extends GameLobbyRepository {
  GameLobbyRepositoryImpl({required this.db});

  final FirebaseFirestore db;

  @override
  Stream<WordleeSettings2P> getGameState(String roomId) {
    return db.collection('games').doc(roomId).snapshots().map((snapshot) {
      return WordleeSettings2P.fromJson(snapshot.data()!);
    });
  }

  @override
  Future<WordleeSettings2P> createGameLobby({required WordleeTime time}) async {
    final id = await _createNewRoomID();
    final answer = generateRandomWord();

    final settings = WordleeSettings2P(
      id: id,
      isHost: true,
      hasPlayer2Joined: false,
      time: time,
      player1Answer: answer,
      player2Answer: answer,
    );

    await db.collection('games').doc(id).set(settings.toJson());
    return settings;
  }

  Future<String> _createNewRoomID() async {
    var id = generateRoomID();
    var isValid = !(await db.collection('games').doc(id).get()).exists;

    while (!isValid) {
      id = generateRoomID();
      isValid = !(await db.collection('games').doc(id).get()).exists;
    }
    return id;
  }

  // Future<WordleeSettings2P> joinGameLobby({required String roomId});
}
