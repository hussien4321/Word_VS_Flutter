import 'package:flutter/material.dart';
import 'package:wordle_vs/model/guess.dart';
import 'package:wordle_vs/model/wordlee.dart';
import 'package:wordle_vs/screens/game/wordle_letter.dart';
import 'package:wordle_vs/utils/constants.dart';

class WordleLine extends StatefulWidget {
  WordleLine({
    super.key,
    required this.wordlee,
    required int index,
    this.isLastLine = false,
  }) {
    text = wordlee.getWord(index);
    guess = wordlee.getGuess(index);

    assert(text.length <= maxWordLength);
  }

  final Wordlee wordlee;
  late final String text;
  late final Guess? guess;
  final bool isLastLine;

  @override
  State<WordleLine> createState() => _WordleLineState();
}

class _WordleLineState extends State<WordleLine>
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
    controller.addStatusListener(_triggerAgain);
  }

  _updateState() {
    setState(() {});
  }

  _triggerAgain(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (triggerCount < maxWordLength - 1) {
        triggerCount++;
        controller.forward(from: 0.0);
      }
    }
  }

  @override
  void dispose() {
    controller.removeListener(_updateState);
    controller.removeStatusListener(_triggerAgain);
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant WordleLine oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.guess == null && widget.guess != null) {
      _startAnimation();
    }
  }

  _startAnimation() {
    triggerCount = 0;
    controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < maxWordLength; i++)
            Expanded(
              child: WordleLetter(
                letter: widget.text[i],
                letterGuess:
                    triggerCount >= i ? widget.guess?.guessAtIndex(i) : null,
                isLastLine: widget.isLastLine,
              ),
            ),
        ],
      ),
    );
  }
}
