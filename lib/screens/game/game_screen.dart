import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordle_vs/model/wordlee.dart';
import 'package:wordle_vs/screens/game/colored_progress_bar.dart';
import 'package:wordle_vs/screens/game/keyboard_key.dart';
import 'package:wordle_vs/screens/game/wordle_line.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/snackbar.dart';

class GameScreen extends StatefulWidget {
  GameScreen({
    super.key,
    required this.duration,
    String? answer,
  }) {
    final random = Random();
    final randomAnswer =
        possibleValidGuesses[random.nextInt(possibleValidWords.length)]
            .toUpperCase();
    final finalAnswer = answer ?? randomAnswer;

    print('answer is $finalAnswer');
    wordlee = Wordlee(answer: finalAnswer);
  }

  final Duration duration;
  late final Wordlee wordlee;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: widget.duration,
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
      if (widget.wordlee.state == GameState.inProgress) {
        widget.wordlee.failGame();
      }
    }
  }

  @override
  void dispose() {
    controller.removeListener(_updateState);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: isLoading ? _buildLoadingIndicator(context) : _buildBody(context),
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
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTimer(BuildContext context) {
    var text = '';
    if (widget.wordlee.isInProgress) {
      final durationInSeconds = widget.duration.inSeconds;

      final remainingTime = (1 - controller.value) * durationInSeconds;

      final remainingMinutes = (remainingTime / 60).floor();
      final remainingSeconds =
          ((remainingTime - remainingMinutes * 60)).floor();
      text =
          '${remainingMinutes < 10 ? "0" : ""}$remainingMinutes : ${remainingSeconds < 10 ? "0" : ""}$remainingSeconds';
    } else {
      text = widget.wordlee.state == GameState.succeeded
          ? 'You WON!'
          : 'Answer was ${widget.wordlee.answer.toUpperCase()}';
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredProgressBar(value: 1 - controller.value),
            SizedBox(height: 8),
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
                            widget.wordlee.submitWord();
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
