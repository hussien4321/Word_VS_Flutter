import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';
import 'package:wordle_vs/screens/game/colored_progress_bar.dart';
import 'package:wordle_vs/screens/game/keyboard_key.dart';
import 'package:wordle_vs/screens/game/wordle_line.dart';
import 'package:wordle_vs/screens/menu/results_dialog_1p.dart';
import 'package:wordle_vs/screens/menu/results_dialog_2p.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/duration_extensions.dart';
import 'package:wordle_vs/utils/snackbar.dart';

class GameScreen extends StatefulWidget {
  GameScreen({
    super.key,
    required this.settings,
  }) {
    // final random = Random();
    // final randomAnswer =
    //     possibleValidGuesses[random.nextInt(possibleValidWords.length)]
    //         .toUpperCase();
    final finalAnswer = settings.map(
      onePlayer: (onePlayer) => onePlayer.answer,
      twoPlayer: (twoPlayer) => twoPlayer.player1Answer,
    );

    print('answer is $finalAnswer');
    wordlee = WordleeGame(answer: finalAnswer);
  }

  late final WordleeSettings settings;
  late final WordleeGame wordlee;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;

  late AnimationController controller;

  final ConfettiController confettiController = ConfettiController(
    duration: confettiAnimationDuration,
  );

  Duration get duration {
    return widget.settings.map(
      onePlayer: (one) => one.time.duration,
      twoPlayer: (two) => two.time.duration,
    );
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: duration,
      vsync: this,
    );
    controller.addListener(_updateState);
    controller.addStatusListener(_onComplete);
    controller.forward();
  }

  void _updateState() {
    setState(() {});
    if (!widget.wordlee.isInProgress && controller.isAnimating) {
      controller.stop();
    }
  }

  void _onComplete(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (widget.wordlee.state is GameStateInProgress) {
        final result = widget.wordlee.failGame(currentTime);
        _showEndGameScreen(result);
      }
    }
  }

  @override
  void dispose() {
    controller.removeListener(_updateState);
    controller.dispose();
    super.dispose();
  }

  Duration get currentTime {
    return Duration(seconds: (controller.value * duration.inSeconds).floor());
  }

  _showEndGameScreen(WordleeResult result) {
    if (widget.wordlee.state is GameStateSuccess) {
      confettiController.play();
    }
    showDialog(
      context: context,
      builder: (ctx) {
        return widget.settings.map(
          onePlayer: (one) => ResultsDialog1P(
            settings: one,
            result: result,
          ),
          twoPlayer: (two) => ResultsDialog2P(
            settings: two,
            player1Result: result,
            player2Result: result,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body:
              isLoading ? _buildLoadingIndicator(context) : _buildBody(context),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: confettiController,
            blastDirection: pi / 2,
            shouldLoop: false,
            gravity: 0.1,
            emissionFrequency: 1,
            numberOfParticles: 50,
            blastDirectionality: BlastDirectionality.explosive,
          ),
        ),
      ],
    );
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            'Loading word...',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Expanded(flex: 5, child: _buildGuessesSection()),
        Expanded(flex: 1, child: _buildTimer(context)),
        Expanded(flex: 3, child: _buildKeyboard(context)),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildGuessesSection() {
    return AspectRatio(
      aspectRatio: guessesSectionAspectRatio,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < maxAttempts; i++)
            Expanded(
              child: WordleLine(
                wordlee: widget.wordlee,
                index: i,
                isLastLine: i == maxAttempts - 1,
                onStartAnimation: () {},
                onFinishAnimation: () {
                  final state = widget.wordlee.state;
                  if (state is GameStateSuccess) {
                    _showEndGameScreen(state.result);
                  } else if (state is GameStateFailure) {
                    _showEndGameScreen(state.result);
                  }
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTimer(BuildContext context) {
    final durationInSeconds = duration.inSeconds;
    final remainingTime = (1 - controller.value) * durationInSeconds;
    final text = Duration(seconds: remainingTime.floor()).toMSFormat();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredProgressBar(value: 1 - controller.value),
            const SizedBox(height: 8),
            Text(
              text,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeyboard(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: IgnorePointer(
        ignoring: !widget.wordlee.isInProgress,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AspectRatio(
            aspectRatio: keyboardAspectRatio,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Expanded(flex: 1, child: SizedBox.shrink()),
                      for (final letter in keyboardLine1)
                        _buildKeyboardButton(letter),
                      const Expanded(flex: 1, child: SizedBox.shrink()),
                    ],
                  ),
                ),
                // const SizedBox(height: 4),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Expanded(flex: 2, child: SizedBox.shrink()),
                      for (final letter in keyboardLine2)
                        _buildKeyboardButton(letter),
                      const Expanded(flex: 2, child: SizedBox.shrink()),
                    ],
                  ),
                ),
                // const SizedBox(height: 4),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildKeyboardButton(
                        'SUBMIT',
                        onTap: () {
                          final error = widget.wordlee.validateSubmission();
                          if (error != null) {
                            topSnackbar('Error: $error');
                          } else {
                            widget.wordlee.submitWord(currentTime);
                            setState(() {});
                          }
                        },
                      ),
                      for (final letter in keyboardLine3)
                        _buildKeyboardButton(letter),
                      _buildKeyboardButton(
                        'DELETE',
                        onTap: () {
                          widget.wordlee.clearWord();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildKeyboardButton(
    String letter, {
    VoidCallback? onTap,
  }) {
    final isSpecial = onTap != null;

    return Expanded(
      flex: isSpecial ? 4 : 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 1.0),
        child: KeyboardLetter(
          letter: letter,
          isValid: isSpecial ? true : widget.wordlee.isValidLetter(letter),
          isSpecial: isSpecial,
          onTap: onTap ??
              () {
                widget.wordlee.inputLetter(letter);
                setState(() {});
              },
        ),
      ),
    );
  }
}
