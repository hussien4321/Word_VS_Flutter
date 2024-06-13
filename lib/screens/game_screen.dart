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
    print('answer is $answer');
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
          icon: const Icon(Icons.menu),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Expanded(
                    flex: 5,
                    child: AspectRatio(
                      aspectRatio: guessesSectionAspectRatio,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 0; i < maxAttempts; i++)
                            Expanded(
                              child: WordleLine(
                                wordlee: wordlee,
                                index: i,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox.shrink()),
                  Expanded(
                    flex: 3,
                    child: _buildKeyboard(context),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
    );
  }

  Widget _buildKeyboard(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
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
                        wordlee.submitWord();
                        setState(() {});
                      },
                    ),
                    for (final letter in keyboardLine3)
                      _buildKeyboardButton(letter),
                    _buildKeyboardButton(
                      'DELETE',
                      onTap: () {
                        wordlee.clearWord();
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
          isValid: isSpecial ? true : wordlee.isValidLetter(letter),
          isSpecial: isSpecial,
          onTap: onTap ??
              () {
                wordlee.inputLetter(letter);
                setState(() {});
              },
        ),
      ),
    );
  }
}
