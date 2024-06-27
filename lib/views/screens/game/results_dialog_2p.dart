import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/utils/duration_extensions.dart';

class ResultsDialog2P extends StatelessWidget {
  ResultsDialog2P({
    super.key,
    required this.settings,
  }) : assert(settings.player2Result != null && settings.player1Result != null);

  final WordleeSettings2P settings;
  WordleeResult get player1Result =>
      settings.isHost ? settings.player1Result! : settings.player2Result!;
  WordleeResult get player2Result =>
      settings.isHost ? settings.player2Result! : settings.player1Result!;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            _buildTitle(context),
            const SizedBox(height: 16),
            _buildResultsHeader(context),
            const SizedBox(height: 4),
            const Divider(
              height: 1,
              thickness: 0.5,
            ),
            _buildResultsRow(
              context,
              left: '${player1Result.attempts}',
              middle: 'Attempts',
              right: '${player2Result.attempts}',
            ),
            _buildResultsRow(
              context,
              left: Duration(seconds: player1Result.timeInSeconds).toMSFormat(),
              middle: 'Time',
              right:
                  Duration(seconds: player2Result.timeInSeconds).toMSFormat(),
            ),
            _buildResultsRow(
              context,
              left: (player1Result.finalGuess == settings.player1Answer
                      ? "✓"
                      : player1Result.finalGuess) ??
                  "-----",
              middle: 'Final guess',
              right: (player2Result.finalGuess == settings.player2Answer
                      ? "✓"
                      : player2Result.finalGuess) ??
                  "-----",
            ),
            _buildResultsRow(
              context,
              left: settings.player1Answer,
              middle: 'Answer',
              right: settings.player2Answer,
            ),
            const SizedBox(height: 32),
            _buildButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    final textTheme = context.textTheme;

    final message = switch (settings.outcome) {
      WordleeGame2pResult.win => "You WON",
      WordleeGame2pResult.draw => "DRAW",
      WordleeGame2pResult.loss => "You Lost",
    };
    final messageColor = switch (settings.outcome) {
      WordleeGame2pResult.win => Colors.green.shade700,
      WordleeGame2pResult.draw => Colors.orange.shade700,
      WordleeGame2pResult.loss => Colors.red.shade700,
    };

    return Text(
      message,
      style: textTheme.titleLarge?.copyWith(
        // fontWeight: FontWeight.bold,
        color: messageColor,
      ),
    );
  }

  Widget _buildResultsHeader(BuildContext context) {
    final textTheme = context.textTheme.labelLarge?.copyWith(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
      color: Colors.grey.shade700,
    );

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Text(
            'You',
            textAlign: TextAlign.center,
            style: textTheme,
          ),
        ),
        const Expanded(
          child: SizedBox.shrink(),
        ),
        Expanded(
          child: Text(
            'Them',
            textAlign: TextAlign.center,
            style: textTheme,
          ),
        ),
      ],
    );
  }

  Widget _buildResultsRow(
    BuildContext context, {
    required String left,
    required String middle,
    required String right,
  }) {
    final textTheme = context.textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              left,
              textAlign: TextAlign.center,
              style: textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: Text(
              middle,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
          ),
          Expanded(
            child: Text(
              right,
              textAlign: TextAlign.center,
              style: textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox.shrink()),
        Expanded(
          flex: 2,
          child: FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ),
        const Expanded(flex: 1, child: SizedBox.shrink()),
      ],
    );
  }
}
