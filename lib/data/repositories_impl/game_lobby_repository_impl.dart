import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/utils/functions.dart';

class GameLobbyRepositoryImpl extends GameLobbyRepository {
  GameLobbyRepositoryImpl({required this.db});

  final FirebaseFirestore db;

  @override
  Stream<WordleeSettings2P> getGameState(String roomID, bool isHost) {
    return db.collection('games').doc(roomID).snapshots().map((snapshot) {
      return WordleeSettings2P.fromJson(snapshot.data()!).copyWith(
        isHost: isHost,
      );
    });
  }

  @override
  Future<WordleeSettings2P> createLobby({required WordleeTime time}) async {
    final id = await _createNewRoomID();
    final answer = generateRandomWord();

    final settings = WordleeSettings2P(
      id: id,
      isHost: true,
      hasStarted: false,
      hasPlayer2Joined: false,
      time: time,
      player1Answer: answer,
      player2Answer: answer,
      player1Result: null,
      player2Result: null,
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

  @override
  Future<WordleeSettings2P?> joinLobby({required String roomID}) async {
    final response = (await db.collection('games').doc(roomID).get());
    if (!response.exists) {
      return null;
    }

    var settings = WordleeSettings2P.fromJson(response.data()!);
    if (settings.hasPlayer2Joined) {
      return null;
    }

    settings = settings.copyWith(hasPlayer2Joined: true);
    await db.collection('games').doc(roomID).set(settings.toJson());

    return settings;
  }

  @override
  Future<void> startGame({required WordleeSettings2P settings}) async {
    await db
        .collection('games')
        .doc(settings.id)
        .set(settings.copyWith(hasStarted: true).toJson());
  }

  @override
  Future<void> submitResults({
    required WordleeSettings2P settings,
    required WordleeResult result,
    required bool isHost,
  }) async {
    final doc = db.collection('games').doc(settings.id);

    if (isHost) {
      await doc.set(settings.copyWith(player1Result: result).toJson());
    } else {
      await doc.set(settings.copyWith(player2Result: result).toJson());
    }
  }
}
