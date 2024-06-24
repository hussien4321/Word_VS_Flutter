import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

class Guess {
  Guess({
    required String answer,
    required this.word,
  })  : assert(answer.length == maxWordLength),
        assert(word.length == maxWordLength) {
    var results = <LetterGuess?>[null, null, null, null, null];
    var remainingAnswers = answer;
    //Step 1 - find correct positions
    for (int i = 0; i < word.length; i++) {
      final letter = word[i];
      if (remainingAnswers[i] == letter) {
        remainingAnswers = remainingAnswers.replaceRange(i, i + 1, ' ');
        results[i] = LetterGuess.correctPosition;
      }
    }

    for (int i = 0; i < word.length; i++) {
      final letter = word[i];
      if (results[i] == null) {
        // step 2. find locations with right word but wrong position
        if (remainingAnswers.contains(letter)) {
          final totalCountOfLetter = remainingAnswers.getCountOfLetter(letter);
          final totalCountInGuessSoFar =
              word.getCountOfLetterUntilIndex(letter, i);
          // only mark those if the number of that character in answer hasn't been exceeded
          if (totalCountOfLetter >= totalCountInGuessSoFar) {
            results[i] = LetterGuess.correctValue;
          } else {
            results[i] = LetterGuess.incorrect;
          }
        } else {
          results[i] = LetterGuess.incorrect;
        }
      }
    }

    _results = results.cast<LetterGuess>();
  }

  final String word;
  late final List<LetterGuess> _results;

  bool get isCorrect {
    return !_results.any((guess) => guess != LetterGuess.correctPosition);
  }

  Set<String> get invalidLetters {
    final invalids = <String>{};
    for (int i = 0; i < word.length; i++) {
      if (_results[i] == LetterGuess.incorrect) {
        invalids.add(word[i]);
      }
    }
    return invalids;
  }

  Set<String> get validLetters {
    final valids = <String>{};
    for (int i = 0; i < word.length; i++) {
      if ((_results[i] == LetterGuess.correctValue ||
          _results[i] == LetterGuess.correctPosition)) {
        valids.add(word[i]);
      }
    }
    return valids;
  }

  LetterGuess guessAtIndex(int index) {
    return _results[index];
  }

  @override
  String toString() {
    var string = '';
    for (int i = 0; i < _results.length; i++) {
      switch (_results[i]) {
        case LetterGuess.correctPosition:
          string += '✓';
        case LetterGuess.correctValue:
          string += '-';
        case LetterGuess.incorrect:
          string += '⨯';
      }
      if (i != _results.length - 1) {
        string += ' ';
      }
    }
    return '<Guess: $string>';
  }
}

enum LetterGuess {
  correctPosition,
  correctValue,
  incorrect;
}
