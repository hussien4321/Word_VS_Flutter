import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';

part 'game_2p_bloc.freezed.dart';

class Game2pBloc extends Bloc<Game2pEvent, Game2pState> {
  Game2pBloc({
    required this.gameLobbyRepository,
    required WordleeSession2P session,
  }) : super(
          Game2pState(
            session: session,
            isHost: session.isHost,
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
    final session = state.session;
    return emit.forEach(
      gameLobbyRepository.getGameState(session.id, state.isHost),
      onData: (updatedSettings) {
        return state.copyWith(
          session: updatedSettings,
        );
      },
    );
  }

  _submitResult(
      Game2pSubmitResultsEvent event, Emitter<Game2pState> emit) async {
    await gameLobbyRepository.submitResults(
      session: state.session,
      result: event.results,
      isHost: state.isHost,
    );
  }
}

@freezed
class Game2pState with _$Game2pState {
  factory Game2pState({
    required WordleeSession2P session,
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
