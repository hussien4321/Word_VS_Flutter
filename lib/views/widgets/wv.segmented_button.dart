import 'package:flutter/material.dart';

class WVSegmentedButton<T> extends StatelessWidget {
  const WVSegmentedButton({
    super.key,
    required this.segments,
    required this.selected,
    this.onChanged,
  });

  final List<WVButtonSegment<T>> segments;
  final T selected;
  final ValueChanged<T>? onChanged;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onChanged != null;

    return SegmentedButton<T>(
      segments: segments
          .map(
            (segment) => ButtonSegment(
              value: segment.value,
              enabled: isEnabled || segment.value == selected,
              label: Text(segment.label),
            ),
          )
          .toList(),
      selected: {selected},
      showSelectedIcon: false,
      onSelectionChanged:
          onChanged == null ? (_) {} : (newValue) => onChanged!(newValue.first),
    );
  }
}

class WVButtonSegment<T> {
  WVButtonSegment({
    required this.value,
    required this.label,
  });

  final T value;
  final String label;
}
