import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_vs/blocs/game/game_2p_bloc.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/views/screens/game/game_screen_base.dart';
import 'package:wordle_vs/views/screens/game/results_dialog_2p.dart';
import 'package:wordle_vs/views/widgets/loading_overlay.dart';

class GameScreen2p extends StatelessWidget {
  GameScreen2p({
    super.key,
    required this.session,
  }) {
    final finalAnswer =
        (session.isHost ? session.player1Answer : session.player2Answer)!;

    wordlee = WordleeGame(answer: finalAnswer);
  }

  final WordleeSession2P session;
  late final WordleeGame wordlee;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Game2pBloc(
        gameLobbyRepository: context.read(),
        session: session,
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

class _GameScreen2p extends StatefulWidget {
  _GameScreen2p({
    required this.bloc,
    required this.wordlee,
  });

  final Game2pBloc bloc;
  final WordleeGame wordlee;

  @override
  State<_GameScreen2p> createState() => _GameScreen2pState();
}

class _GameScreen2pState extends State<_GameScreen2p> {
  late final ConfettiController _confettiController;

  @override
  void initState() {
    _confettiController = ConfettiController(
      duration: confettiAnimationDuration,
    );
    super.initState();
  }

  WordleeSession2P get session {
    return widget.bloc.state.session;
  }

  _recordResult(WordleeResult result) {
    widget.bloc.add(
      Game2pEvent.submitResults(results: result),
    );
  }

  _showEndGameScreen(BuildContext context) {
    if (session.outcome == WordleeGame2pResult.win) {
      _confettiController.play();
    }
    showDialog(
      context: context,
      builder: (ctx) {
        return ResultsDialog2P(
          session: session,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<Game2pBloc, Game2pState>(
      bloc: widget.bloc,
      listenWhen: (before, after) {
        return !before.session.isComplete && after.session.isComplete;
      },
      listener: (context, state) {
        if (state.session.isComplete) {
          _showEndGameScreen(context);
        }
      },
      child: LoadingOverlay(
        isLoading: !session.isComplete && !widget.wordlee.isInProgress,
        message: 'Waiting for other player...',
        child: GameScreenBase(
          session: session,
          wordlee: widget.wordlee,
          onShowResults: () => _showEndGameScreen(context),
          confettiController: _confettiController,
          onResult: _recordResult,
        ),
      ),
    );
  }
}
