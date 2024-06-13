import 'package:wordle_vs/model/guess.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

class Wordlee {
  Wordlee({required this.answer}) : assert(answer.length == maxWordLength) {
    final words = <String>[];
    for (int i = 0; i < maxAttempts; i++) {
      words.add("");
    }
    _words = words;
  }

  final String answer;
  int _currentIndex = 0;
  GameState state = GameState.inProgress;
  late List<String> _words;
  final List<Guess> _guesses = [];

  List<Guess> get guesses => _guesses;

  String get _currentWord {
    return _words[_currentIndex];
  }

  String getWord(int index) {
    return _words[index].toPaddedText();
  }

  Guess? getGuess(int index) {
    if (index + 1 <= _guesses.length) {
      return _guesses[index];
    }
    return null;
  }

  void submitWord() {
    if (_guesses.length < maxAttempts && _currentWord.length == maxWordLength) {
      final guess = Guess(answer: answer, word: _currentWord);
      _guesses.add(guess);
      if (guess.isCorrect) {
        state = GameState.succeeded;
      } else {
        if (_currentIndex + 1 < maxAttempts) {
          _currentIndex++;
        } else {
          state = GameState.failed;
        }
      }
    }
  }

  clearWord() {
    final currentWord = _currentWord;
    if (currentWord.isNotEmpty) {
      _words[_currentIndex] = currentWord.substring(0, currentWord.length - 1);
    }
  }

  void inputLetter(String letter) {
    assert(letter.isLetter);

    var currentWord = _currentWord;
    if (currentWord.length < maxWordLength) {
      currentWord += letter;
    }
    _words[_currentIndex] = currentWord;
  }

  bool isValidLetter(String letter) {
    assert(letter.isLetter);

    final hasAnyCorrectGuess =
        _guesses.any((guess) => guess.validLetters.contains(letter));
    final hasAnyIncorrectGuess =
        _guesses.any((guess) => guess.invalidLetters.contains(letter));

    if (hasAnyCorrectGuess) {
      return true;
    }
    return !hasAnyIncorrectGuess;
  }
}

enum GameState {
  inProgress,
  failed,
  succeeded;
}
