import 'package:flutter/material.dart';

class WVTextField extends StatefulWidget {
  const WVTextField({
    super.key,
    required this.hint,
    required this.onChanged,
    this.textCapitalization,
    this.initialValue,
    this.controller,
    this.errorText,
    this.maxLength,
    this.autofocus = false,
  }) : assert(controller == null || initialValue == null);

  final String hint;
  final ValueChanged<String> onChanged;
  final String? initialValue;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final String? errorText;
  final int? maxLength;
  final bool autofocus;

  @override
  State<WVTextField> createState() => _WVTextFieldState();
}

class _WVTextFieldState extends State<WVTextField> {
  late TextEditingController controller;
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);
    focusNode.addListener(_update);
  }

  void _update() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.removeListener(_update);
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final errorText = widget.errorText;
    final hasFocus = focusNode.hasFocus;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade300,
            border: Border.all(
              color: hasFocus ? Colors.blue : Colors.black45,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 4,
          ),
          child: TextField(
            focusNode: focusNode,
            onChanged: widget.onChanged,
            autofocus: widget.autofocus,
            showCursor: false,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black45,
                  ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              alignLabelWithHint: true,
              isCollapsed: true,
              border: InputBorder.none,
              counterText: "",
              contentPadding: EdgeInsets.zero,
            ),
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.words,
            keyboardType: TextInputType.text,
            textAlignVertical: TextAlignVertical.center,
            controller: controller,
            maxLength: widget.maxLength,
          ),
        ),
        if (errorText != null) ...[
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 8.0,
            ),
            child: Text(
              errorText,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.red,
                  ),
            ),
          ),
        ],
      ],
    );
  }
}
