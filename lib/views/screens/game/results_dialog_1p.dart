import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/utils/duration_extensions.dart';

class ResultsDialog1P extends StatelessWidget {
  const ResultsDialog1P({
    super.key,
    required this.settings,
    required this.result,
  });

  final WordleeSettings1P settings;
  final WordleeResult result;

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
            _buildResultsRow(
              context,
              title: 'Attempts',
              value: '${result.attempts}',
            ),
            _buildResultsRow(
              context,
              title: 'Time',
              value: Duration(seconds: result.timeInSeconds).toMSFormat(),
            ),
            _buildResultsRow(
              context,
              title: 'Final guess',
              value: result.finalAnswer ?? "-----",
            ),
            _buildResultsRow(
              context,
              title: 'Answer',
              value: settings.answer,
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

    final message = switch (result.isCorrect) {
      true => "You WON",
      false => "You Lost",
    };
    final messageColor = switch (result.isCorrect) {
      true => Colors.green.shade700,
      false => Colors.red.shade700,
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

    return Column(
      children: [
        Text(
          'Stats',
          textAlign: TextAlign.center,
          style: textTheme,
        ),
        const SizedBox(height: 4),
        const Divider(
          height: 1,
          thickness: 0.5,
        ),
      ],
    );
  }

  Widget _buildResultsRow(
    BuildContext context, {
    required String title,
    required String value,
  }) {
    final textTheme = context.textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
          ),
          Expanded(
            child: Text(
              value,
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
