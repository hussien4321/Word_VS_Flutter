import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/views/widgets/pd.row.dart';

import '../../../utils/functions.dart';
import '../game/game_screen.dart';

class PreGame1pScreen extends StatefulWidget {
  const PreGame1pScreen({super.key});

  @override
  State<PreGame1pScreen> createState() => _PreGame1pScreenState();
}

class _PreGame1pScreenState extends State<PreGame1pScreen> {
  WordleeTime selectedTime = WordleeTime.threeMin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Game Options (1p)'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PDRow(
              title: 'Time',
              content: SegmentedButton<WordleeTime>(
                segments: const [
                  ButtonSegment(
                    value: WordleeTime.oneMin,
                    label: Text('1 Min'),
                  ),
                  ButtonSegment(
                    value: WordleeTime.threeMin,
                    label: Text('3 Min'),
                  ),
                  ButtonSegment(
                    value: WordleeTime.fiveMin,
                    label: Text('5 Min'),
                  ),
                ],
                selected: {selectedTime},
                showSelectedIcon: false,
                onSelectionChanged: (newTime) {
                  setState(() {
                    selectedTime = newTime.first;
                  });
                },
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
            FilledButton(
              onPressed: () {
                Get.off(
                  () => GameScreen(
                    settings: WordleeSettings1P(
                      answer: generateRandomWord(),
                      time: selectedTime,
                    ),
                  ),
                );
              },
              child: const Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}
