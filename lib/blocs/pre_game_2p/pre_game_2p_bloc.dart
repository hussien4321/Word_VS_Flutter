import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_lobby_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';

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
    on<PreGame2pChangeTimeEvent>(
      _changeTime,
      transformer: restartable(),
    );
    on<PreGame2pCreateLobbyEvent>(
      _createLobby,
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
                  error: null,
                ),
        );
      },
    );
  }

  _changeTime(PreGame2pChangeTimeEvent event, Emitter<PreGame2pState> emit) {
    state.whenOrNull<void>(
      newCreateLobby: (a, b) {
        emit(
          (state as PreGame2pNewCreateLobbyState).copyWith(time: event.time),
        );
      },
    );
  }

  _createLobby(
      PreGame2pCreateLobbyEvent event, Emitter<PreGame2pState> emit) async {
    final createState = event.state;

    emit(createState.copyWith(isLoading: true));

    final settings =
        await gameLobbyRepository.createGameLobby(time: createState.time);

    return emit.forEach(
      gameLobbyRepository.getGameState(settings.id),
      onData: (updatedSettings) {
        return PreGame2pState.createdLobby(
          settings: updatedSettings,
        );
      },
    );
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
  }) = PreGame2pCreatedLobbyState;

  factory PreGame2pState.newJoinLobby({
    required String joinRoomId,
    required bool isLoading,
    required String? error,
  }) = PreGame2pNewJoinLobbyState;

  factory PreGame2pState.joinedLobby({
    required WordleeSettings2P settings,
  }) = PreGame2pJoinedLobbyState;
}

@freezed
class PreGame2pEvent with _$PreGame2pEvent {
  factory PreGame2pEvent.selectMode({
    required bool isCreating,
  }) = PreGame2pSelectModeEvent;

  factory PreGame2pEvent.changeTime({
    required WordleeTime time,
  }) = PreGame2pChangeTimeEvent;

  factory PreGame2pEvent.createLobby({
    required PreGame2pNewCreateLobbyState state,
  }) = PreGame2pCreateLobbyEvent;

  factory PreGame2pEvent.joinLobby({required String id}) =
      PreGame2pJoinLobbyEvent;
}
