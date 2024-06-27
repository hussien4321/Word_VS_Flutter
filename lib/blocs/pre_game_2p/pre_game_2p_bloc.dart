import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/utils/constants.dart';

part 'pre_game_2p_bloc.freezed.dart';

class PreGame2pBloc extends Bloc<PreGame2pEvent, PreGame2pState> {
  PreGame2pBloc({
    required this.gameLobbyRepository,
  }) : super(
          PreGame2pState.init(),
        ) {
    on<PreGame2pSelectModeEvent>(
      _selectMode,
      transformer: restartable(),
    );
    on<PreGame2pUpdateTimeEvent>(
      _updateTime,
      transformer: restartable(),
    );
    on<PreGame2pUpdateRoomIDEvent>(
      _updateRoomID,
      transformer: restartable(),
    );
    on<PreGame2pCreateLobbyEvent>(
      _createLobby,
      transformer: restartable(),
    );
    on<PreGame2pJoinLobbyEvent>(
      _joinLobby,
      transformer: restartable(),
    );
    on<PreGame2pStartGameEvent>(
      _startGame,
      transformer: restartable(),
    );
  }

  final GameLobbyRepository gameLobbyRepository;

  _selectMode(PreGame2pSelectModeEvent event, Emitter<PreGame2pState> emit) {
    state.whenOrNull<void>(
      init: () {
        emit(
          event.isCreating
              ? PreGame2pState.newCreateLobby(
                  time: WordleeTime.threeMin,
                  isLoading: false,
                )
              : PreGame2pState.newJoinLobby(
                  joinRoomId: '',
                  isLoading: false,
                  textError: null,
                  error: null,
                ),
        );
      },
    );
  }

  _updateTime(PreGame2pUpdateTimeEvent event, Emitter<PreGame2pState> emit) {
    state.whenOrNull<void>(
      newCreateLobby: (a, b) {
        emit(
          (state as PreGame2pNewCreateLobbyState).copyWith(time: event.time),
        );
      },
    );
  }

  _updateRoomID(
      PreGame2pUpdateRoomIDEvent event, Emitter<PreGame2pState> emit) {
    state.whenOrNull<void>(
      newJoinLobby: (a, b, c, d) {
        final (roomID, error) = _validateRoomID(event.roomID);
        emit(
          (state as PreGame2pNewJoinLobbyState).copyWith(
            joinRoomId: roomID,
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
      PreGame2pCreateLobbyEvent event, Emitter<PreGame2pState> emit) async {
    final createState = event.state;

    emit(createState.copyWith(isLoading: true));

    final settings =
        await gameLobbyRepository.createLobby(time: createState.time);

    return emit.forEach(
      gameLobbyRepository.getGameState(settings.id, true),
      onData: (updatedSettings) {
        final currentState = state;
        if (currentState is PreGame2pCreatedLobbyState) {
          return currentState.copyWith(settings: updatedSettings);
        } else {
          return PreGame2pState.createdLobby(
            settings: updatedSettings,
            isLoading: false,
          );
        }
      },
    );
  }

  _joinLobby(
      PreGame2pJoinLobbyEvent event, Emitter<PreGame2pState> emit) async {
    final joinState = event.state;

    emit(joinState.copyWith(
      isLoading: true,
      error: null,
    ));

    final settings =
        await gameLobbyRepository.joinLobby(roomID: joinState.joinRoomId);

    if (settings == null) {
      emit(
        joinState.copyWith(
          isLoading: false,
          textError: 'Room not found',
        ),
      );
    } else {
      return emit.forEach(
        gameLobbyRepository.getGameState(settings.id, false),
        onData: (updatedSettings) {
          return PreGame2pState.joinedLobby(
            settings: updatedSettings,
          );
        },
      );
    }
  }

  _startGame(
      PreGame2pStartGameEvent event, Emitter<PreGame2pState> emit) async {
    final createState = event.state;

    emit(createState.copyWith(
      isLoading: true,
    ));

    await gameLobbyRepository.startGame(settings: createState.settings);
  }
}

@freezed
class PreGame2pState with _$PreGame2pState {
  factory PreGame2pState.init() = PreGame2pInitState;

  factory PreGame2pState.newCreateLobby({
    required WordleeTime time,
    required bool isLoading,
  }) = PreGame2pNewCreateLobbyState;

  factory PreGame2pState.createdLobby({
    required WordleeSettings2P settings,
    required bool isLoading,
  }) = PreGame2pCreatedLobbyState;

  factory PreGame2pState.newJoinLobby({
    required String joinRoomId,
    required bool isLoading,
    required String? textError,
    required String? error,
  }) = PreGame2pNewJoinLobbyState;

  factory PreGame2pState.joinedLobby({
    required WordleeSettings2P settings,
  }) = PreGame2pJoinedLobbyState;
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

  factory PreGame2pEvent.updateTime({
    required WordleeTime time,
  }) = PreGame2pUpdateTimeEvent;

  factory PreGame2pEvent.updateJoinRoomID({
    required String roomID,
  }) = PreGame2pUpdateRoomIDEvent;

  factory PreGame2pEvent.createLobby({
    required PreGame2pNewCreateLobbyState state,
  }) = PreGame2pCreateLobbyEvent;

  factory PreGame2pEvent.joinLobby({
    required PreGame2pNewJoinLobbyState state,
  }) = PreGame2pJoinLobbyEvent;

  factory PreGame2pEvent.startGame({
    required PreGame2pCreatedLobbyState state,
  }) = PreGame2pStartGameEvent;
}
