import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_vs/blocs/game/game_2p_bloc.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/model/game_logic/wordlee_game.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/duration_extensions.dart';
import 'package:wordle_vs/utils/snackbar.dart';
import 'package:wordle_vs/views/screens/game/colored_progress_bar.dart';
import 'package:wordle_vs/views/screens/game/keyboard_key.dart';
import 'package:wordle_vs/views/screens/game/results_dialog_2p.dart';
import 'package:wordle_vs/views/screens/game/wordle_line.dart';
import 'package:wordle_vs/views/widgets/loading_overlay.dart';

class Game2pScreen extends StatelessWidget {
  Game2pScreen({
    super.key,
    required this.settings,
  }) {
    final finalAnswer =
        settings.isHost ? settings.player1Answer : settings.player2Answer;
    print('answer is ${finalAnswer} / isHost:${settings.isHost}');
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

class _GameScreen2p extends StatefulWidget {
  const _GameScreen2p({
    required this.bloc,
    required this.wordlee,
  });

  final Game2pBloc bloc;
  final WordleeGame wordlee;

  @override
  State<_GameScreen2p> createState() => _GameScreenState();
}

class _GameScreenState extends State<_GameScreen2p>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;

  late AnimationController controller;

  final ConfettiController confettiController = ConfettiController(
    duration: confettiAnimationDuration,
  );

  WordleeSettings2P get settings {
    return widget.bloc.state.settings;
  }

  Duration get duration {
    return widget.bloc.state.settings.map(
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
        _recordResult(result);
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

  _recordResult(WordleeResult result) {
    widget.bloc.add(
      Game2pEvent.submitResults(results: result),
    );
  }

  _showEndGameScreen() {
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
      bloc: widget.bloc,
      listenWhen: (before, after) {
        print(
            '-------   p1:${after.settings.player1Result} / p2${after.settings.player2Result}');
        print(
            '------- BlocListener p1:${before.settings.isComplete} / p2${before.settings.isComplete}');
        return !before.settings.isComplete && after.settings.isComplete;
      },
      listener: (context, state) {
        if (state.settings.isComplete) {
          _showEndGameScreen();
        }
      },
      child: Stack(
        children: [
          LoadingOverlay(
            isLoading: !settings.isComplete && !widget.wordlee.isInProgress,
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              body: isLoading
                  ? _buildLoadingIndicator(context)
                  : _buildBody(context),
            ),
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
      ),
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
                    _recordResult(state.result);
                  } else if (state is GameStateFailure) {
                    _recordResult(state.result);
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
