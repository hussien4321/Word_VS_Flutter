import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';

part 'game_2p_bloc.freezed.dart';

class Game2pBloc extends Bloc<Game2pEvent, Game2pState> {
  Game2pBloc({
    required this.gameLobbyRepository,
    required WordleeSettings2P settings,
  }) : super(
          Game2pState(
            settings: settings,
            isHost: settings.isHost,
          ),
        ) {
    on<Game2pConnectEvent>(
      _connect,
      transformer: restartable(),
    );
    on<Game2pSubmitResultsEvent>(
      _submitResult,
      transformer: restartable(),
    );
    add(Game2pEvent.connect());
  }

  final GameLobbyRepository gameLobbyRepository;

  _connect(Game2pConnectEvent event, Emitter<Game2pState> emit) async {
    final settings = state.settings;
    return emit.forEach(
      gameLobbyRepository.getGameState(settings.id, state.isHost),
      onData: (updatedSettings) {
        return state.copyWith(
          settings: updatedSettings,
        );
      },
    );
  }

  _submitResult(
      Game2pSubmitResultsEvent event, Emitter<Game2pState> emit) async {
    await gameLobbyRepository.submitResults(
      settings: state.settings,
      result: event.results,
      isHost: state.isHost,
    );
  }
}

@freezed
class Game2pState with _$Game2pState {
  factory Game2pState({
    required WordleeSettings2P settings,
    required bool isHost,
  }) = _Game2pState;
}

@freezed
class Game2pEvent with _$Game2pEvent {
  factory Game2pEvent.connect() = Game2pConnectEvent;
  factory Game2pEvent.updateGame({required WordleeGame wordlee}) =
      Game2pUpdateGameEvent;

  factory Game2pEvent.submitResults({
    required WordleeResult results,
  }) = Game2pSubmitResultsEvent;
}
