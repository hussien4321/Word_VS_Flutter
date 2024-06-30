import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

class KeyboardLetter extends StatelessWidget {
  KeyboardLetter({
    super.key,
    required this.letter,
    required this.onTap,
    this.isValid = true,
    this.isSpecial = false,
  }) : assert(letter.isLetterOrSpace || isSpecial);

  final String letter;
  final bool isSpecial;
  final bool isValid;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isValid
        ? Colors.grey
        : ColorTween(begin: Colors.grey.shade300, end: Colors.grey.shade400)
            .lerp(0.5);

    final size = MediaQuery.of(context).size;
    final smallestSide =
        min(size.width, size.height * (1 / keyboardAspectRatio));
    final fontSize = min(maxKeyboardFontSize, smallestSide / 30.0);

    final borderRadius = BorderRadius.circular(4);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Material(
        color: backgroundColor,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                letter,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: isSpecial ? fontSize : fontSize * (7 / 5),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
