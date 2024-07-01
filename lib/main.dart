import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordle_vs/data/repositories_impl/game_lobby_repository_impl.dart';
import 'package:wordle_vs/data/repositories_impl/game_settings_repository_impl.dart';
import 'package:wordle_vs/firebase_options.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final db = FirebaseFirestore.instance;
  final gameLobbyRepository = GameLobbyRepositoryImpl(db: db);
  final sharedPreferences = await SharedPreferences.getInstance();
  final gameSettingsRepository = GameSettingsRepositoryImpl(
    sharedPreferences: sharedPreferences,
  );

  runApp(
    MyApp(
      gameLobbyRepository: gameLobbyRepository,
      gameSettingsRepository: gameSettingsRepository,
    ),
  );
}
