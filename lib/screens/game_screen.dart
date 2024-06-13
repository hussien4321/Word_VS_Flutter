import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordle_vs/model/wordlee.dart';
import 'package:wordle_vs/screens/keyboard_key.dart';
import 'package:wordle_vs/screens/wordle_line.dart';
import 'package:wordle_vs/utils/constants.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Wordlee wordlee = Wordlee(answer: 'ANGEL');
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    final words = await rootBundle.loadString('assets/words.txt');
    final wordsList = words.split('\n');
    final random = Random();
    final answer = wordsList[random.nextInt(wordsList.length)].toUpperCase();
    print('answer is ${answer}');
    wordlee = Wordlee(answer: answer);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'Wordl VS',
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade100,
      body: isLoading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(
                    'Loading today\'s word...',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            )
          : SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  for (int index in [0, 1, 2, 3, 4, 5])
                    WordleLine(
                      wordlee: wordlee,
                      index: index,
                    ),
                  Expanded(child: SizedBox.shrink()),
                  _buildKeyboard(),
                  SizedBox(height: 20),
                ],
              ),
            ),
    );
  }

  Widget _buildKeyboard() {
    return Column(
      children: [
        for (final line in [keyboardLine1, keyboardLine2]) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (final letter in line) _buildKeyboardButton(letter)],
          ),
          const SizedBox(height: 4),
        ],
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildKeyboardButton('ENTER', onTap: () {
              wordlee.submitWord();
              setState(() {});
            }),
            for (final letter in keyboardLine3) _buildKeyboardButton(letter),
            _buildKeyboardButton('DELETE', onTap: () {
              wordlee.clearWord();
              setState(() {});
            }),
          ],
        ),
      ],
    );
  }

  Widget _buildKeyboardButton(String letter, {VoidCallback? onTap}) {
    final isSpecial = onTap != null;

    return KeyboardLetter(
      letter: letter,
      isValid: isSpecial ? true : wordlee.isValidLetter(letter),
      isSpecial: isSpecial,
      onTap: onTap ??
          () {
            wordlee.inputLetter(letter);
            setState(() {});
          },
    );
  }
}
