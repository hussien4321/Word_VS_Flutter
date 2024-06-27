import 'package:flutter/material.dart';

class PDTextField extends StatefulWidget {
  const PDTextField({
    super.key,
    required this.hint,
    required this.onChanged,
    this.initialValue,
    this.controller,
    this.errorText,
    this.autofocus = false,
  }) : assert(controller == null || initialValue == null);

  final String hint;
  final ValueChanged<String> onChanged;
  final String? initialValue;
  final TextEditingController? controller;
  final String? errorText;
  final bool autofocus;

  @override
  State<PDTextField> createState() => _PDTextFieldState();
}

class _PDTextFieldState extends State<PDTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: Colors.black45,
          width: 0.5,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: TextField(
              onChanged: widget.onChanged,
              autofocus: widget.autofocus,
              decoration: InputDecoration(
                hintText: widget.hint,
                errorText: widget.errorText,
                hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black45,
                    ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                alignLabelWithHint: true,
                isCollapsed: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              textCapitalization: TextCapitalization.characters,
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
