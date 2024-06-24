import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/utils/duration_extensions.dart';

enum _GameResultState {
  win,
  loss,
  draw;
}

class ResultsDialog2P extends StatelessWidget {
  const ResultsDialog2P({
    super.key,
    required this.settings,
    required this.player1Result,
    required this.player2Result,
  });

  final WordleeSettings2P settings;
  final WordleeResult player1Result;
  final WordleeResult player2Result;

  _GameResultState get _state {
    if (player1Result.isCorrect) {
      if (player2Result.isCorrect) {
        if (player1Result.attempts < player2Result.attempts) {
          return _GameResultState.win;
        } else if (player1Result.attempts > player2Result.attempts) {
          return _GameResultState.loss;
        } else {
          if (player1Result.timeInSeconds < player2Result.timeInSeconds) {
            return _GameResultState.win;
          } else if (player1Result.timeInSeconds >
              player2Result.timeInSeconds) {
            return _GameResultState.loss;
          } else {
            return _GameResultState.draw;
          }
        }
      } else {
        return _GameResultState.win;
      }
    } else {
      if (player2Result.isCorrect) {
        return _GameResultState.loss;
      } else {
        return _GameResultState.draw;
      }
    }
  }

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
              left: player1Result.finalAnswer ?? "-----",
              middle: 'Final guess',
              right: player2Result.finalAnswer ?? "-----",
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

    final message = switch (_state) {
      _GameResultState.win => "You WON",
      _GameResultState.draw => "DRAW",
      _GameResultState.loss => "You Lost",
    };
    final messageColor = switch (_state) {
      _GameResultState.win => Colors.green.shade700,
      _GameResultState.draw => Colors.orange.shade700,
      _GameResultState.loss => Colors.red.shade700,
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
