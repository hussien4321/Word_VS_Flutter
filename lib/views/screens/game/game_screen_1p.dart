import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/views/screens/game/game_screen_base.dart';
import 'package:wordle_vs/views/screens/game/results_dialog_1p.dart';

class GameScreen1p extends StatelessWidget {
  GameScreen1p({
    super.key,
    required this.settings,
  }) {
    final finalAnswer = settings.answer;

    wordlee = WordleeGame(answer: finalAnswer);
  }

  late final WordleeSettings1P settings;
  late final WordleeGame wordlee;
  late final WordleeResult result;

  final ConfettiController confettiController = ConfettiController(
    duration: confettiAnimationDuration,
  );

  _showEndGameScreen(BuildContext context) {
    if (wordlee.state is GameStateSuccess) {
      confettiController.play();
    }
    showDialog(
      context: context,
      builder: (ctx) {
        return ResultsDialog1P(
          settings: settings,
          result: result,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GameScreenBase(
      settings: settings,
      wordlee: wordlee,
      onResult: (result) {
        this.result = result;
        _showEndGameScreen(context);
      },
      onShowResults: () => _showEndGameScreen(context),
      confettiController: confettiController,
    );
  }
}
