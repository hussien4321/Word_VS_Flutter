import 'package:flutter/material.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

class KeyboardLetter extends StatelessWidget {
  KeyboardLetter({
    super.key,
    required this.letter,
    required this.onTap,
    this.isValid = true,
    this.isSpecial = false,
  }) : assert(letter.isLetter || isSpecial);

  final String letter;
  final bool isSpecial;
  final bool isValid;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // final isSpecial = widget.isSpecial;
    final backgroundColor = isValid ? Colors.grey : ColorTween(begin:Colors.grey.shade300,end: Colors.grey.shade400).lerp(0.5);
    final borderRadius = BorderRadius.circular(4);

    return Container(
      width: isSpecial ? 60 : 35,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 2),
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
                      fontSize: isSpecial ? 13 : null,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
