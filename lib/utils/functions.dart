import 'dart:math';

import 'package:wordle_vs/utils/constants.dart';

String generateRandomWord() {
  final random = Random();
  return possibleValidGuesses[random.nextInt(possibleValidWords.length)]
      .toUpperCase();
}

String generateRoomID({int length = 4}) {
  final random = Random();
  var word = '';
  for (var i = 0; i < length; i++) {
    word += alphabet[random.nextInt(alphabet.length)];
  }
  return word;
}
