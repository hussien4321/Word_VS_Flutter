import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';

part 'game_2p_bloc.freezed.dart';

class Game2pBloc extends Bloc<Game2pEvent, Game2pState> {
  Game2pBloc({
    required this.gameLobbyRepository,
    required WordleeSession2P session,
  }) : super(
          Game2pState(
            session: session,
            isHost: session.isHost,
            isCancelled: false,
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
    on<Game2pDisconnectEvent>(
      _disconnect,
      transformer: restartable(),
    );
    add(Game2pEvent.connect());
  }

  final GameLobbyRepository gameLobbyRepository;

  StreamSubscription<WordleeSession2P?>? _gameSubscription;

  _connect(Game2pConnectEvent event, Emitter<Game2pState> emit) async {
    final session = state.session;
    _gameSubscription?.cancel();
    _gameSubscription = gameLobbyRepository
        .getGameState(
      session.id,
      state.isHost,
    )
        .listen(
      (updatedSettings) {
        if (updatedSettings == null) {
          emit(
            Game2pState(
              session: state.session,
              isHost: state.isHost,
              isCancelled: true,
            ),
          );
        } else {
          emit(
            state.copyWith(
              session: updatedSettings,
            ),
          );
        }
      },
    );
    return _gameSubscription!.asFuture();
  }

  _disconnect(Game2pDisconnectEvent event, Emitter<Game2pState> emit) async {
    _gameSubscription?.cancel();
    gameLobbyRepository.closeSession(roomID: state.session.id);
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
    required bool isCancelled,
  }) = _Game2pState;
}

@freezed
class Game2pEvent with _$Game2pEvent {
  factory Game2pEvent.connect() = Game2pConnectEvent;
  factory Game2pEvent.disconnect() = Game2pDisconnectEvent;

  factory Game2pEvent.submitResults({
    required WordleeResult results,
  }) = Game2pSubmitResultsEvent;
}
