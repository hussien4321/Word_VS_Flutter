import 'package:flutter/material.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/views/widgets/pd.row.dart';

mixin PreGame2pMixin {
  Widget buildPaddedContent({required List<Widget> children}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }

  Widget buildGameLobbyHeader(
    BuildContext context, {
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.grey.shade800,
            ),
      ),
    );
  }

  Widget buildLobbyDetailsBlock(
    BuildContext context, {
    required List<Widget> children,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }

  Widget buildTimeSelector({
    required WordleeTime selectedTime,
    ValueChanged<WordleeTime>? onChanged,
  }) {
    final isEnabled = onChanged != null;
    return PDRow(
      title: 'Time',
      content: SegmentedButton<WordleeTime>(
        segments: WordleeTime.values.map(
          (time) {
            return ButtonSegment(
              value: time,
              enabled: isEnabled || time == selectedTime,
              label: Text(time.label),
            );
          },
        ).toList(),
        selected: {selectedTime},
        showSelectedIcon: false,
        onSelectionChanged:
            onChanged == null ? (_) {} : (newTime) => onChanged(newTime.first),
      ),
    );
  }

  Widget buildPlayerConnectionStation(
    BuildContext context, {
    required String name,
    required bool isConnected,
  }) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isConnected ? Colors.green : Colors.orange.shade600,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isConnected ? null : Colors.grey.shade700,
                fontStyle: isConnected ? null : FontStyle.italic,
              ),
        ),
        if (!isConnected) ...[
          const SizedBox(width: 8),
          SizedBox(
            height: 10,
            width: 10,
            child: CircularProgressIndicator(
              strokeWidth: 1,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ],
    );
  }

  Widget buildSubmitButton({
    required String title,
    required VoidCallback? onPressed,
  }) {
    return FilledButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(title),
      ),
    );
  }
}
