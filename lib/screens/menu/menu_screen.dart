import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/screens/game/game_screen.dart';
import 'package:wordle_vs/screens/menu/results_dialog_1p.dart';
import 'package:wordle_vs/screens/menu/results_dialog_2p.dart';
import 'package:wordle_vs/utils/snackbar.dart';

import '../../utils/constants.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final ConfettiController confettiController = ConfettiController(
    duration: confettiAnimationDuration,
  );

  _showTestPopUp(BuildContext context) {
    final dialog2 = ResultsDialog2P(
      settings: WordleeSettings2P(
        time: WordleeTime.oneMin,
        player1Answer: 'AUDIO',
        player2Answer: 'AUDIO',
        isHost: true,
      ),
      player1Result: WordleeResult(
        attempts: 5,
        isCorrect: true,
        timeInSeconds: 48,
        finalAnswer: 'NICER',
      ),
      player2Result: WordleeResult(
        attempts: 2,
        isCorrect: false,
        timeInSeconds: 60,
        finalAnswer: 'MEATY',
      ),
    );
    final dialog1 = ResultsDialog1P(
      settings: WordleeSettings1P(
        time: WordleeTime.oneMin,
        answer: 'AUDIO',
      ),
      result: WordleeResult(
        attempts: 2,
        isCorrect: false,
        timeInSeconds: 60,
        finalAnswer: 'MEATY',
      ),
    );

    confettiController.play();
    showDialog(
      context: context,
      builder: (ctx) {
        return dialog1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wordl VS'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              _buildSectionButton(
                context,
                icon: const Icon(Icons.person),
                title: 'Practice Mode',
                subtitle: '1 Player',
                colors: [
                  Colors.blue,
                  Colors.blue.shade200,
                ],
                onTap: () {
                  final random = Random();
                  final randomAnswer = possibleValidGuesses[
                          random.nextInt(possibleValidWords.length)]
                      .toUpperCase();

                  Get.to(
                    () => GameScreen(
                      settings: WordleeSettings1P(
                        answer: randomAnswer,
                        time: WordleeTime.threeMin,
                      ),
                    ),
                  );
                },
              ),
              _buildSectionButton(
                context,
                icon: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person),
                    Icon(Icons.person),
                  ],
                ),
                title: 'VS Mode',
                subtitle: '2 Players',
                colors: [
                  Colors.deepOrange,
                  Colors.orange,
                ],
                onTap: () {
                  _showTestPopUp(context);
                  // quickSnackbar(
                  //   "In progress",'

                  //   "Come back later",
                  // );
                },
              ),
              _buildSectionButton(
                context,
                icon: const Icon(Icons.settings),
                title: 'Settings',
                colors: [
                  Colors.grey.shade700,
                  Colors.grey,
                ],
                onTap: () {
                  quickSnackbar(
                    "In progress",
                    "Come back later",
                  );
                },
              ),
            ],
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

  Widget _buildSectionButton(
    context, {
    required Widget icon,
    required String title,
    required List<Color> colors,
    required VoidCallback onTap,
    String? subtitle,
  }) {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: onTap,
                child: Ink(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: colors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon,
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white),
                      ),
                      if (subtitle != null)
                        Text(
                          subtitle,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.grey.shade100),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
