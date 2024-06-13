import 'package:wordle_vs/utils/constants.dart';

extension StringExtensions on String {
  bool get isLetter {
    return length == 1 && (alphabet.contains(this) || this == ' ');
  }

  String toPaddedText() {
    var newText = this;
    for (int i = length; i < maxWordLength; i++) {
      newText += ' ';
    }
    return newText;
  }

  int getCountOfLetter(String letter) {
    assert(letter.isLetter);

    var count = 0;
    for (int i = 0; i < length; i++) {
      if (this[i] == letter) {
        count++;
      }
    }
    return count;
  }

  int getCountOfLetterUntilIndex(String letter, int index) {
    assert(letter.isLetter);
    assert(index <= maxWordLength - 1);

    var count = 0;
    for (int i = 0; i <= index; i++) {
      if (this[i] == letter) {
        count++;
      }
    }
    return count;
  }
}
