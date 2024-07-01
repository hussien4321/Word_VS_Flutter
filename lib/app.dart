import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/data/repositories/game_settings_repository.dart';
import 'package:wordle_vs/views/screens/menu/menu_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.gameLobbyRepository,
    required this.gameSettingsRepository,
  });

  final GameLobbyRepository gameLobbyRepository;
  final GameSettingsRepository gameSettingsRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GameLobbyRepository>.value(
          value: gameLobbyRepository,
        ),
        RepositoryProvider<GameSettingsRepository>.value(
          value: gameSettingsRepository,
        ),
      ],
      child: GetMaterialApp(
        title: 'WordlVS',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.grey,
            surface: Colors.grey.shade100,
            brightness: Brightness.light,
          ),
          scaffoldBackgroundColor: Colors.grey.shade100,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const MenuScreen(),
      ),
    );
  }
}
