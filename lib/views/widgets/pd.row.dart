import 'package:flutter/material.dart';

class PDRow extends StatelessWidget {
  const PDRow({
    super.key,
    required this.title,
    required this.content,
    this.subtitle,
    this.titleStyle,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Widget content;
  final TextStyle? titleStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleStyle ?? Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: content,
                ),
              ),
            ],
          ),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                subtitle!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade700,
                    ),
              ),
            ),
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
