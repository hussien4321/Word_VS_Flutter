import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle_vs/model/game_data/wordlee_config.dart';
import 'package:wordle_vs/model/game_logic/guess.dart';
import 'package:wordle_vs/utils/constants.dart';
import 'package:wordle_vs/utils/string_extensions.dart';

part 'wordlee_game.freezed.dart';

class WordleeGame {
  WordleeGame({
    required this.answer,
  }) : assert(answer.length == maxWordLength) {
    print('---- Creating game (answer: $answer)');

    final words = <String>[];
    for (int i = 0; i < maxAttempts; i++) {
      words.add("");
    }
    _words = words;
  }

  final String answer;
  int _currentIndex = 0;
  GameState state = GameState.inProgress();
  late List<String> _words;
  final List<Guess> _guesses = [];

  bool get isInProgress => state is GameStateInProgress;

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

  String? validateSubmission() {
    if (_guesses.length == maxAttempts) {
      return 'No more attempts remaining';
    } else if (_currentWord.length < maxWordLength) {
      return 'Word is incomplete';
    } else if (_words.sublist(0, _currentIndex).contains(_currentWord)) {
      return 'Cannot reuse previous word';
    } else if (!possibleValidGuesses.contains(_currentWord.toLowerCase())) {
      return 'Not a valid guess';
    }
    return null;
  }

  WordleeResult? submitWord(Duration time) {
    if (_guesses.length < maxAttempts && _currentWord.length == maxWordLength) {
      final guess = Guess(answer: answer, word: _currentWord);
      _guesses.add(guess);
      if (guess.isCorrect) {
        final result = loadResult(time);
        state = GameState.success(result: result);
        return result;
      } else {
        if (_currentIndex + 1 < maxAttempts) {
          _currentIndex++;
        } else {
          final result = loadResult(time);
          state = GameState.failure(result: result);
          return result;
        }
      }
    }
    return null;
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

  WordleeResult failGame(Duration time) {
    final result = loadResult(time);
    state = GameState.failure(
      result: loadResult(time),
    );
    return result;
  }

  WordleeResult loadResult(Duration time) {
    return WordleeResult(
      timeInSeconds: time.inSeconds,
      attempts: _guesses.length,
      isCorrect: _guesses.any((guess) => guess.isCorrect),
      finalGuess: _words.where((word) => word.length == 5).lastOrNull,
    );
  }
}

@freezed
sealed class GameState with _$GameState {
  factory GameState.inProgress() = GameStateInProgress;

  factory GameState.failure({
    required WordleeResult result,
  }) = GameStateFailure;

  factory GameState.success({
    required WordleeResult result,
  }) = GameStateSuccess;
}
