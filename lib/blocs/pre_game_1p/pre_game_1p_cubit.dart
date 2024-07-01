import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/data/repositories/game_settings_repository.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';

part 'pre_game_1p_cubit.freezed.dart';

class PreGame1pCubit extends Cubit<PreGame1pState> {
  PreGame1pCubit({
    required this.gameSettingsRepository,
  }) : super(
          PreGame1pState.init(
            time: gameSettingsRepository.getSettings().time,
          ),
        );

  final GameSettingsRepository gameSettingsRepository;

  void updateTime(WordleeTime time) {
    emit(state.copyWith(
      time: time,
    ),);
  }

  Future<void> startGame() async {
    await gameSettingsRepository.updateSettings((settings) {
      return settings.copyWith(time: state.time);
    });
    emit(
      PreGame1pState.started(
        time: state.time,
      ),
    );
  }
}

@freezed
class PreGame1pState with _$PreGame1pState {
  factory PreGame1pState.init({
    required WordleeTime time,
  }) = PreGame1pInitState;

  factory PreGame1pState.started({
    required WordleeTime time,
  }) = PreGame1pStartedState;
}
