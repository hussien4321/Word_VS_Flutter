import 'package:flutter/material.dart';

Future<bool> showInfoDialog(
  BuildContext context, {
  required String message,
  String? title,
  String? buttonLabel,
}) async {
  Widget okButton = ElevatedButton(
    child: Text(buttonLabel ?? "Ok"),
    onPressed: () {
      Navigator.of(context).pop(true);
    },
  );
  AlertDialog alert = AlertDialog(
    title: title == null ? null : Text(title),
    content: Text(message),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: [
      okButton,
    ],
  );
  final result = await showDialog<bool?>(
    context: context,
    builder: (_) => alert,
  );
  return result ?? false;
}
