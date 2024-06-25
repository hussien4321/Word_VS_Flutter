import 'package:flutter/material.dart';

class PDRow extends StatelessWidget {
  const PDRow({
    super.key,
    required this.title,
    required this.content,
    this.titleStyle,
    this.onTap,
  });

  final String title;
  final Widget content;
  final TextStyle? titleStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: titleStyle ?? Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          content,
        ],
      ),
    );
  }
}

class PDRowToggle extends StatelessWidget {
  const PDRowToggle({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return PDRow(
      title: title,
      onTap: () => onChanged(!value),
      content: Switch(
        value: value,
        onChanged: (newIsOn) {
          onChanged(newIsOn);
        },
      ),
    );
  }
}
