import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:wordle_vs/model/game_result.dart';

class ResultsDialog extends StatelessWidget {
  const ResultsDialog({
    super.key,
    this.result = GameResult.win,
  });

  final GameResult result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitle(context),
          const SizedBox(height: 16),
          _buildShowAnswer(
            context,
            answer: 'AUDIO',
          ),
          const SizedBox(height: 16),
          _buildResultsHeader(context),
          const SizedBox(height: 4),
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          _buildResultsRow(
            context,
            left: '3',
            middle: 'Attempts',
            right: '6',
          ),
          _buildResultsRow(
            context,
            left: '1:43',
            middle: 'Time',
            right: '2:55',
          ),
          const SizedBox(height: 32),
          _buildButton(context),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    final textTheme = context.textTheme;

    final message = switch (result) {
      GameResult.win => "You WON",
      GameResult.draw => "DRAW",
      GameResult.loss => "You Lost",
    };
    final messageColor = switch (result) {
      GameResult.win => Colors.green.shade700,
      GameResult.draw => Colors.orange.shade700,
      GameResult.loss => Colors.red.shade700,
    };

    return Text(
      message,
      style: textTheme.titleLarge?.copyWith(
        // fontWeight: FontWeight.bold,
        color: messageColor,
      ),
    );
  }

  Widget _buildShowAnswer(
    BuildContext context, {
    required String answer,
  }) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Answer: ',
          ),
          TextSpan(
            text: answer,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
        style: Theme.of(context).textTheme.bodyMedium,
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
