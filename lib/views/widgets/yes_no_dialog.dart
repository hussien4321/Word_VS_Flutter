import 'package:flutter/material.dart';

Future<bool> showYesNoDialog(
  BuildContext context, {
  required String message,
  required VoidCallback onYes,
  String? title,
  String? yesText,
  String? noText,
}) async {
  Widget cancelButton = SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      child: Text(noText ?? "No"),
      onPressed: () {
        Navigator.of(context).pop(false);
      },
    ),
  );
  Widget continueButton = SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      child: Text(yesText ?? "Yes"),
      onPressed: () {
        Navigator.of(context).pop(true);
        onYes();
      },
    ),
  );
  Widget buttons = Row(
    children: [
      Flexible(child: cancelButton),
      const SizedBox(width: 16),
      Flexible(child: continueButton),
    ],
  );
  AlertDialog alert = AlertDialog(
    title: title == null ? null : Text(title),
    content: Text(message),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: [
      buttons,
    ],
  );
  final result = await showDialog<bool?>(
    context: context,
    builder: (_) => alert,
  );
  return result ?? false;
}
