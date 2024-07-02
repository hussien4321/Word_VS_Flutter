import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/data/repositories/game_settings_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

part 'pre_game_2p_bloc.freezed.dart';

class PreGame2pBloc extends Bloc<PreGame2pEvent, PreGame2pState> {
  PreGame2pBloc({
    required this.gameLobbyRepository,
    required this.gameSettingsRepository,
  }) : super(
          PreGame2pState.init(),
        ) {
    on<PreGame2pSelectModeEvent>(_selectMode, transformer: restartable());
    on<PreGame2pUpdateCreateLobbyEvent>(_updateCreateLobby,
        transformer: restartable());
    on<PreGame2pUpdateJoinLobbyEvent>(_updateJoinLobby,
        transformer: restartable());
    on<PreGame2pCreateLobbyEvent>(_createLobby, transformer: restartable());
    on<PreGame2pJoinLobbyEvent>(_joinLobby, transformer: restartable());
    on<PreGame2pSubmitCustomAnswerEvent>(_submitCustomAnswer,
        transformer: restartable());
    on<PreGame2pUpdateJoinedLobbyEvent>(_updateJoinedLobby,
        transformer: restartable());
    on<PreGame2pStartGameEvent>(_startGame, transformer: restartable());
    on<PreGame2pPopToStartEvent>(_popToStart, transformer: restartable());
    on<PreGame2pDisconnectEvent>(_disconnect, transformer: restartable());
  }

  final GameLobbyRepository gameLobbyRepository;
  final GameSettingsRepository gameSettingsRepository;

  StreamSubscription<WordleeSession2P?>? _createdLobbySubcription;
  StreamSubscription<WordleeSession2P?>? _joinedLobbySubcription;

  PreGame2pState get newCreateLobby {
    final settings = gameSettingsRepository.getSettings();
    return PreGame2pState.newCreateLobby(
      time: settings.time,
      name: settings.playerName,
      answerType: settings.answerType,
      customAnswer: null,
      isLoading: false,
      errorText: '',
    );
  }

  PreGame2pState get newJoinLobby {
    final settings = gameSettingsRepository.getSettings();
    return PreGame2pState.newJoinLobby(
      joinRoomId: '',
      isLoading: false,
      textError: null,
      name: settings.playerName,
    );
  }

  @override
  Future<void> close() {
    _createdLobbySubcription?.cancel();
    _joinedLobbySubcription?.cancel();
    return super.close();
  }

  _selectMode(
    PreGame2pSelectModeEvent event,
    Emitter<PreGame2pState> emit,
  ) {
    state.whenOrNull<void>(
      init: () {
        emit(
          event.isCreating ? newCreateLobby : newJoinLobby,
        );
      },
    );
  }

  _updateCreateLobby(
    PreGame2pUpdateCreateLobbyEvent event,
    Emitter<PreGame2pState> emit,
  ) {
    String? answer = event.answer;
    if (answer != null && !answer.isValidWord) {
      answer = null;
    }
    String? errorText;
    if (answer != null && !answer.isValidAnswer) {
      errorText = 'Not a valid word';
    }
    state.whenOrNull<void>(
      newCreateLobby: (a, b, c, d, e, f) {
        emit(
          (state as PreGame2pNewCreateLobbyState).copyWith(
            time: event.time,
            answerType: event.answerType,
            customAnswer: answer,
            name: event.name,
            errorText: errorText,
          ),
        );
      },
    );
  }

  _updateJoinLobby(
    PreGame2pUpdateJoinLobbyEvent event,
    Emitter<PreGame2pState> emit,
  ) {
    state.whenOrNull<void>(
      newJoinLobby: (a, b, c, d) {
        final (roomID, error) = _validateRoomID(event.roomID);

        emit(
          (state as PreGame2pNewJoinLobbyState).copyWith(
            joinRoomId: roomID,
            name: event.name,
            textError: error,
          ),
        );
      },
    );
  }

  (String, String?) _validateRoomID(String roomID) {
    var originalRoomID = roomID.toUpperCase();
    var formattedRoomID = '';
    String? error;

    for (int i = 0; i < originalRoomID.length; i++) {
      if (alphabet.contains(originalRoomID[i])) {
        formattedRoomID += originalRoomID[i];
      } else {
        error = 'Invalid character detected';
      }
    }
    return (formattedRoomID, error);
  }

  _createLobby(
    PreGame2pCreateLobbyEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    final createState = event.state;

    emit(createState.copyWith(isLoading: true));

    await gameSettingsRepository.updateSettings((settings) {
      return settings.copyWith(
        answerType: createState.answerType,
        time: createState.time,
        playerName: createState.name,
      );
    });
    final session = await gameLobbyRepository.createLobby(
      time: createState.time,
      name: createState.name,
      answerType: createState.answerType,
      customAnswer: createState.customAnswer,
    );

    _createdLobbySubcription?.cancel();
    _createdLobbySubcription = gameLobbyRepository
        .getGameState(session.id, true)
        .listen((updatedSettings) {
      if (updatedSettings == null) {
        emit(newCreateLobby);
        _createdLobbySubcription?.cancel();
      } else {
        final currentState = state;
        if (currentState is PreGame2pCreatedLobbyState) {
          emit(
            currentState.copyWith(
              session: updatedSettings,
            ),
          );
        } else {
          emit(
            PreGame2pState.createdLobby(
              session: updatedSettings,
              isLoading: false,
            ),
          );
        }
      }
    });
    await _createdLobbySubcription!.asFuture();
  }

  _joinLobby(
    PreGame2pJoinLobbyEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    final joinState = event.state;

    emit(joinState.copyWith(
      isLoading: true,
    ));

    await gameSettingsRepository.updateSettings((settings) {
      return settings.copyWith(
        playerName: joinState.name,
      );
    });
    final session = await gameLobbyRepository.joinLobby(
      roomID: joinState.joinRoomId,
      name: joinState.name,
    );

    if (session == null) {
      emit(
        joinState.copyWith(
          isLoading: false,
          textError: 'Room not found',
        ),
      );
    } else {
      _joinedLobbySubcription?.cancel();
      _joinedLobbySubcription = gameLobbyRepository
          .getGameState(session.id, false)
          .listen((updatedSettings) {
        if (updatedSettings == null) {
          emit(newJoinLobby);
          _joinedLobbySubcription?.cancel();
        } else {
          emit(
            PreGame2pState.joinedLobby(
              session: updatedSettings,
              isLoading: false,
              errorText: null,
              customAnswer: null,
            ),
          );
        }
      });
    }
    await _joinedLobbySubcription!.asFuture();
  }

  _updateJoinedLobby(
    PreGame2pUpdateJoinedLobbyEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    String answer = event.answer;
    String? errorText;
    if (answer.length == maxWordLength && !answer.isValidAnswer) {
      errorText = 'Not a valid word';
    }

    state.whenOrNull<void>(
      joinedLobby: (session, isLoading, c, d) {
        emit(
          (state as PreGame2pJoinedLobbyState).copyWith(
            customAnswer: event.answer,
            isLoading: isLoading,
            session: session,
            errorText: errorText,
          ),
        );
      },
    );
  }

  _submitCustomAnswer(
    PreGame2pSubmitCustomAnswerEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    final joinState = event.state;

    emit(
      joinState.copyWith(
        isLoading: true,
      ),
    );

    final session = await gameLobbyRepository.submitP2Answer(
      roomID: joinState.session.id,
      answer: joinState.customAnswer!,
    );

    emit(
      joinState.copyWith(
        session: session,
        isLoading: false,
      ),
    );
  }

  _startGame(
    PreGame2pStartGameEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    final createState = event.state;

    emit(createState.copyWith(
      isLoading: true,
    ));

    await gameLobbyRepository.startGame(session: createState.session);
  }

  _popToStart(
    PreGame2pPopToStartEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    emit(
      PreGame2pState.init(),
    );
  }

  _disconnect(
    PreGame2pDisconnectEvent event,
    Emitter<PreGame2pState> emit,
  ) async {
    final state = this.state;
    if (state is PreGame2pJoinedLobbyState) {
      _joinedLobbySubcription?.cancel();
      gameLobbyRepository.closeSession(roomID: state.session.id);
      emit(newJoinLobby);
    } else if (state is PreGame2pCreatedLobbyState) {
      _createdLobbySubcription?.cancel();
      gameLobbyRepository.closeSession(roomID: state.session.id);
      emit(newCreateLobby);
    }
  }
}

@freezed
class PreGame2pState with _$PreGame2pState {
  factory PreGame2pState.init() = PreGame2pInitState;

  factory PreGame2pState.newCreateLobby({
    required WordleeTime time,
    required String name,
    required WordleeAnswerType answerType,
    required String? customAnswer,
    required String? errorText,
    required bool isLoading,
  }) = PreGame2pNewCreateLobbyState;

  factory PreGame2pState.createdLobby({
    required WordleeSession2P session,
    required bool isLoading,
  }) = PreGame2pCreatedLobbyState;

  factory PreGame2pState.newJoinLobby({
    required String joinRoomId,
    required String name,
    required bool isLoading,
    required String? textError,
  }) = PreGame2pNewJoinLobbyState;

  factory PreGame2pState.joinedLobby({
    required WordleeSession2P session,
    required bool isLoading,
    required String? customAnswer,
    required String? errorText,
  }) = PreGame2pJoinedLobbyState;
}

extension PreGame2pNewCreateLobbyStateExt on PreGame2pNewCreateLobbyState {
  bool get isValid {
    return !answerType.isCustom ||
        (customAnswer != null && customAnswer!.isValidAnswer);
  }
}

extension PreGame2pNewJoinLobbyStateExt on PreGame2pNewJoinLobbyState {
  bool get isValid {
    if (textError != null) {
      return false;
    }
    if (joinRoomId.length != maxRoomIDLength) {
      return false;
    }

    for (int i = 0; i < joinRoomId.length; i++) {
      if (!alphabet.contains(joinRoomId[i])) {
        return false;
      }
    }
    return true;
  }
}

@freezed
class PreGame2pEvent with _$PreGame2pEvent {
  factory PreGame2pEvent.selectMode({
    required bool isCreating,
  }) = PreGame2pSelectModeEvent;

  factory PreGame2pEvent.updateCreateLobby({
    required WordleeTime time,
    required String name,
    required WordleeAnswerType answerType,
    required String? answer,
  }) = PreGame2pUpdateCreateLobbyEvent;

  factory PreGame2pEvent.updateJoinLobby({
    required String roomID,
    required String name,
  }) = PreGame2pUpdateJoinLobbyEvent;

  factory PreGame2pEvent.createLobby({
    required PreGame2pNewCreateLobbyState state,
  }) = PreGame2pCreateLobbyEvent;

  factory PreGame2pEvent.joinLobby({
    required PreGame2pNewJoinLobbyState state,
  }) = PreGame2pJoinLobbyEvent;

  factory PreGame2pEvent.submitCustomAnswer({
    required PreGame2pJoinedLobbyState state,
    required String customAnswer,
  }) = PreGame2pSubmitCustomAnswerEvent;

  factory PreGame2pEvent.updateJoinedLobby({
    required String answer,
  }) = PreGame2pUpdateJoinedLobbyEvent;

  factory PreGame2pEvent.startGame({
    required PreGame2pCreatedLobbyState state,
  }) = PreGame2pStartGameEvent;

  factory PreGame2pEvent.popToStart() = PreGame2pPopToStartEvent;

  factory PreGame2pEvent.disconnect() = PreGame2pDisconnectEvent;
}
