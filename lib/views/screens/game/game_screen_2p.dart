import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_vs/blocs/game/game_2p_bloc.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/views/screens/game/game_screen_base.dart';
import 'package:wordle_vs/views/screens/game/results_dialog_2p.dart';
import 'package:wordle_vs/views/widgets/loading_overlay.dart';

class GameScreen2p extends StatelessWidget {
  GameScreen2p({
    super.key,
    required this.settings,
  }) {
    final finalAnswer =
        settings.isHost ? settings.player1Answer : settings.player2Answer;

    wordlee = WordleeGame(answer: finalAnswer);
  }

  final WordleeSettings2P settings;
  late final WordleeGame wordlee;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Game2pBloc(
        gameLobbyRepository: context.read(),
        settings: settings,
      ),
      child: BlocBuilder<Game2pBloc, Game2pState>(
        builder: (ctx, _) {
          return _GameScreen2p(
            bloc: ctx.read<Game2pBloc>(),
            wordlee: wordlee,
          );
        },
      ),
    );
  }
}

class _GameScreen2p extends StatelessWidget {
  _GameScreen2p({
    required this.bloc,
    required this.wordlee,
  });

  final Game2pBloc bloc;
  final WordleeGame wordlee;
  final ConfettiController confettiController = ConfettiController(
    duration: confettiAnimationDuration,
  );

  WordleeSettings2P get settings {
    return bloc.state.settings;
  }

  _recordResult(WordleeResult result) {
    bloc.add(
      Game2pEvent.submitResults(results: result),
    );
  }

  _showEndGameScreen(BuildContext context) {
    if (settings.outcome == WordleeGame2pResult.win) {
      confettiController.play();
    }
    showDialog(
      context: context,
      builder: (ctx) {
        return ResultsDialog2P(
          settings: settings,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<Game2pBloc, Game2pState>(
      bloc: bloc,
      listenWhen: (before, after) {
        print(
            '-------   p1:${after.settings.player1Result} / p2${after.settings.player2Result}');
        print(
            '------- BlocListener p1:${before.settings.isComplete} / p2${before.settings.isComplete}');
        return !before.settings.isComplete && after.settings.isComplete;
      },
      listener: (context, state) {
        if (state.settings.isComplete) {
          _showEndGameScreen(context);
        }
      },
      child: LoadingOverlay(
        isLoading: !settings.isComplete && !wordlee.isInProgress,
        message: 'Waiting for other player...',
        child: GameScreenBase(
          settings: settings,
          wordlee: wordlee,
          onShowResults: () => _showEndGameScreen(context),
          confettiController: confettiController,
          onResult: _recordResult,
        ),
      ),
    );
  }
}
