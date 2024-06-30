import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/utils/functions.dart';

class GameLobbyRepositoryImpl extends GameLobbyRepository {
  GameLobbyRepositoryImpl({required this.db});

  final FirebaseFirestore db;

  @override
  Stream<WordleeSession2P> getGameState(String roomID, bool isHost) {
    return db.collection('games').doc(roomID).snapshots().map((snapshot) {
      return WordleeSession2P.fromJson(snapshot.data()!).copyWith(
        isHost: isHost,
      );
    });
  }

  @override
  Future<WordleeSession2P> createLobby({
    required WordleeTime time,
    required WordleeAnswerType answerType,
    required String? customAnswer,
    required String name,
  }) async {
    assert(!answerType.isCustom || customAnswer != null);

    final id = await _createNewRoomID();
    final answer = answerType.isCustom
        ? (customAnswer!).toUpperCase()
        : generateRandomWord();

    final session = WordleeSession2P(
      id: id,
      isHost: true,
      hasStarted: false,
      hasPlayer2Joined: false,
      time: time,
      answerType: answerType,
      player1Answer: answerType.isCustom ? null : answer,
      player2Answer: answer,
      player1Name: name,
      player2Name: null,
      player1Result: null,
      player2Result: null,
    );

    await db.collection('games').doc(id).set(session.toJson());
    return session;
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
  Future<WordleeSession2P?> joinLobby({
    required String roomID,
    required String? name,
  }) async {
    final response = (await db.collection('games').doc(roomID).get());
    if (!response.exists) {
      return null;
    }

    var session = WordleeSession2P.fromJson(response.data()!);
    if (session.hasPlayer2Joined) {
      return null;
    }

    session = session.copyWith(
      hasPlayer2Joined: true,
      player2Name: name,
    );
    await db.collection('games').doc(roomID).set(session.toJson());

    return session;
  }

  @override
  Future<WordleeSession2P> submitP2Answer(
      {required String roomID, required String answer}) async {
    final response = (await db.collection('games').doc(roomID).get());

    var session = WordleeSession2P.fromJson(response.data()!);
    session = session.copyWith(
      player1Answer: answer,
    );
    await db.collection('games').doc(roomID).set(session.toJson());

    return session;
  }

  @override
  Future<void> startGame({required WordleeSession2P session}) async {
    await db
        .collection('games')
        .doc(session.id)
        .set(session.copyWith(hasStarted: true).toJson());
  }

  @override
  Future<void> submitResults({
    required WordleeSession2P session,
    required WordleeResult result,
    required bool isHost,
  }) async {
    final doc = db.collection('games').doc(session.id);

    if (isHost) {
      await doc.set(session.copyWith(player1Result: result).toJson());
    } else {
      await doc.set(session.copyWith(player2Result: result).toJson());
    }
  }
}
