import 'dart:math';

import 'package:flutter/material.dart';

class ColoredProgressBar extends StatefulWidget {
  const ColoredProgressBar({
    super.key,
    required this.value,
    this.startColor,
    this.middleColor,
    this.endColor,
  });

  final double value;
  final Color? startColor;
  final Color? middleColor;
  final Color? endColor;

  @override
  State<ColoredProgressBar> createState() => _ColoredProgressBarState();
}

class _ColoredProgressBarState extends State<ColoredProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  final Duration animationDuration = const Duration(milliseconds: 300);
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: animationDuration,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant ColoredProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      return animateBar(
        start: oldWidget.value,
        end: widget.value,
      );
    }
  }

  void animateBar({
    required double start,
    required double end,
  }) {
    animation = Tween<double>(begin: start, end: end).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    final startColor = widget.startColor ?? Colors.red[700];
    final middleColor = widget.middleColor ?? Colors.orange[300];
    final endColor = widget.endColor ?? Colors.green[600];

    final barColor = widget.value <= 0.333
        ? ColorTween(
            begin: startColor,
            end: middleColor,
          ).lerp(
            min(widget.value * 3, 1),
          )
        : ColorTween(
            begin: middleColor,
            end: endColor,
          ).lerp(
            max((widget.value - 1 / 3) * 1.5, 0),
          );

    return LinearProgressIndicator(
      value: controller.isAnimating ? animation.value : widget.value,
      minHeight: 8,
      color: barColor,
      borderRadius: BorderRadius.circular(8),
    );
  }
}
