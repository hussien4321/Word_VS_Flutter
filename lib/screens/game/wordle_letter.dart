import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordle_vs/model/game_logic/guess.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

class WordleLetter extends StatefulWidget {
  WordleLetter({
    super.key,
    required this.letter,
    this.letterGuess,
    this.isLastLine = false,
  }) : assert(letter.isLetter);

  final String letter;
  final LetterGuess? letterGuess;
  final bool isLastLine;

  @override
  State<WordleLetter> createState() => _WordleLetterState();
}

class _WordleLetterState extends State<WordleLetter>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  int triggerCount = 0;

  final Duration animationDuration = flipLetterAnimationDuration;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: animationDuration,
      vsync: this,
    );

    controller.addListener(_updateState);
  }

  _updateState() {
    setState(() {});
  }

  @override
  void dispose() {
    controller.removeListener(_updateState);
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant WordleLetter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.letterGuess == null && widget.letterGuess != null) {
      controller.forward(from: 0.0);
    }
  }

  bool get isInFirstHalfAnimation {
    return controller.isAnimating && controller.value < 0.5;
  }

  bool get isInSecondHalfAnimation {
    return controller.isAnimating && controller.value >= 0.5;
  }

  LetterGuess? get letterGuess {
    if (controller.value <= 0.5) {
      return null;
    }
    return widget.letterGuess;
  }

  Color _calculateColor() {
    switch (letterGuess) {
      case LetterGuess.correctPosition:
        return Colors.green;
      case LetterGuess.correctValue:
        return Colors.orange;
      case LetterGuess.incorrect:
        return widget.isLastLine ? Colors.red.shade400 : Colors.grey;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final smallestSide = min(size.width, size.height * 0.6);
    final fontSize = min(maxGuessFontSize, smallestSide / 20.0);

    return Transform.scale(
      scaleY: controller.isAnimating ? (1 - controller.value * 2).abs() : 1.0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          border: letterGuess != null
              ? null
              : Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
          color: _calculateColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Center(
            child: Text(
              widget.letter,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
