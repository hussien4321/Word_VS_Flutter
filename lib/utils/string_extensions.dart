import 'package:wordle_vs/utils/constants.dart';

extension StringExtensions on String {
  bool get isValidAnswer {
    return isValidWord && possibleValidWords.contains(toLowerCase());
  }

  bool get isValidWord {
    if (length != maxWordLength) {
      return false;
    }
    final word = toUpperCase();
    for (int i = 0; i < maxWordLength; i++) {
      if (!word[i].isLetter) {
        return false;
      }
    }
    return true;
  }

  bool get isLetter {
    return length == 1 && alphabet.contains(this);
  }

  bool get isLetterOrSpace {
    return isLetter || this == ' ';
  }

  String toPaddedText() {
    var newText = this;
    for (int i = length; i < maxWordLength; i++) {
      newText += ' ';
    }
    return newText;
  }

  int getCountOfLetter(String letter) {
    assert(letter.isLetterOrSpace);

    var count = 0;
    for (int i = 0; i < length; i++) {
      if (this[i] == letter) {
        count++;
      }
    }
    return count;
  }

  int getCountOfLetterUntilIndex(String letter, int index) {
    assert(letter.isLetterOrSpace);
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
