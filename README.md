<div align="center">

# Word VS

**A Wordle-style word game with a real-time two-player mode.** Race an opponent to the same answer on a timer, or play solo.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firestore-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com/docs/firestore)

**Client and multiplayer backend both built solo** — real-time head-to-head runs directly on Firestore with no intermediate server.

Framework-free game engine shared by both modes

</div>

---

## Tech stack

| Concern | Choice |
|---|---|
| Framework | Flutter (Dart) |
| State management | `flutter_bloc` — Bloc for the 2P game, Cubits for pre-game |
| Event concurrency | `bloc_concurrency` |
| Codegen | `freezed`, `json_serializable` |
| Multiplayer | Cloud Firestore document streams |
| Local settings | `shared_preferences` |
| Navigation & DI | `get` |
| Effects | `confetti` |

---

## Technical highlights

| Area | Approach | |
|---|---|---|
| **Scoring duplicate letters** | The rule everyone gets wrong. `SPEED` guessed against `ERASE` must mark exactly as many yellows as the answer actually has letters to spend. Needs two passes and a consumed-letter budget. | [↓](#1-duplicate-letter-guess-evaluation) |
| **A game engine with no framework in it** | `WordleeGame` imports no Flutter, no Firebase and no BLoC. It's a plain Dart object the UI drives, which is what makes the rules testable and the two modes share them. | [↓](#2-a-single-engine-across-both-modes) |
| **Two players, one answer, no server** | Head-to-head runs on a single Firestore document with a collision-checked room code. Neither client is authoritative over the other's board. | [↓](#3-two-player-sessions-on-one-document) |
| **States that can't be misread** | Game state, results and settings are `freezed` sealed unions, so "in progress" and "finished with a result" can't be confused at a call site. | [↓](#4-sealed-state-modelling-with-freezed) |

---

## Architecture

```
lib/
├── model/
│   ├── game_logic/      WordleeGame, Guess — pure Dart, no I/O, no Flutter
│   ├── game_data/       WordleeSession (freezed + json_serializable)
│   └── game_settings/   Timer length, answer source
├── data/
│   ├── repositories/       Interfaces
│   └── repositories_impl/  Firestore lobby, shared_preferences settings
├── blocs/               game_2p (Bloc), pre_game_1p / pre_game_2p (Cubit)
└── views/screens/       Menu, pre-game, game boards, result dialogs
```

The dependency arrow points inward: `views` → `blocs` → `data` interfaces → `model`. The engine at the centre knows nothing about any of it.

---

## Implementation

### 1. Duplicate-letter guess evaluation

This is the part of Wordle that looks trivial and isn't. Marking each letter independently — "is it in the answer somewhere?" — over-reports duplicates: guess `SPEED` against an answer with one `E` and a naive implementation lights up both `E`s, telling the player something false about the word.

The correct rule is that greens are resolved first and *consume* the letters they matched; yellows are then handed out only while the answer still has that letter to spend. Two passes with a shrinking budget:

```dart
// Pass 1 — exact positions, consuming the matched letter from the pool
for (int i = 0; i < word.length; i++) {
  if (remainingAnswers[i] == word[i]) {
    remainingAnswers = remainingAnswers.replaceRange(i, i + 1, ' ');
    results[i] = LetterGuess.correctPosition;
  }
}

// Pass 2 — present-but-misplaced, only while the budget allows
for (int i = 0; i < word.length; i++) {
  if (results[i] != null) continue;
  final letter = word[i];
  if (remainingAnswers.contains(letter)) {
    final available = remainingAnswers.getCountOfLetter(letter);
    final usedSoFar  = word.getCountOfLetterUntilIndex(letter, i);
    results[i] = available >= usedSoFar
        ? LetterGuess.correctValue
        : LetterGuess.incorrect;
  } else {
    results[i] = LetterGuess.incorrect;
  }
}
```

Blanking a matched position rather than deleting it keeps the string indexable in the second pass — the positions still have to line up.

The on-screen keyboard derives from the same data, and needs its own rule: a letter stays enabled if *any* guess ever marked it valid, even if a later guess marked it wrong in a different position. Deriving keyboard state per-guess instead of across all guesses greys out letters the player still needs.

### 2. A single engine across both modes

`WordleeGame` is a plain Dart class. No `package:flutter`, no Firebase, no BLoC — just the board, the guesses and the rules:

```dart
String? validateSubmission() {
  if (_guesses.length == maxAttempts)              return 'No more attempts remaining';
  if (_currentWord.length < maxWordLength)         return 'Word is incomplete';
  if (_words.sublist(0, _currentIndex)
        .contains(_currentWord))                   return 'Cannot reuse previous word';
  if (!possibleValidGuesses.contains(
        _currentWord.toLowerCase()))               return 'Not a valid guess';
  return null;
}
```

Validation returns the reason rather than a bool, so the UI displays it without re-deriving why. Both single-player and two-player drive the identical object — the difference between the modes is entirely in what surrounds it, which is why the rules can't drift between them.

### 3. Two-player sessions on one document

A match is one Firestore document. Creating a lobby generates a room code and checks it isn't taken before claiming it:

```dart
Future<String> _createNewRoomID() async {
  var id = generateRoomID();
  var isValid = !(await db.collection('games').doc(id).get()).exists;
  while (!isValid) {
    id = generateRoomID();
    isValid = !(await db.collection('games').doc(id).get()).exists;
  }
  return id;
}
```

Both clients then stream the document. Crucially, neither player's board travels — only the session envelope does: who has joined, whether it has started, each player's answer and each player's final result. Keystrokes stay local, so the network carries a handful of small writes per match rather than a stream of them, and one player's connection hiccup can't stall the other's board.

The answer assignment is the neat bit. When the host supplies a custom word, `player1Answer` is left null and `player2Answer` holds it — the host already knows the word they chose, so there's nothing to hide from them and nothing to send. When it's random, both get the same word. The asymmetry falls out of the data model rather than needing a branch at read time.

Sessions carry a `createdAt` timestamp so stale rooms can be expired server-side rather than accumulating.

### 4. Sealed state modelling with `freezed`

Game state, results and settings are all generated sealed unions:

```dart
GameState.inProgress()
GameState.success(result: …)
GameState.failure(result: …)
```

A finished game always carries its result and an in-progress one structurally cannot, so there's no nullable `result` to forget to check. Sessions get `copyWith`, value equality and JSON codecs from the same generator, which matters for a type that round-trips through Firestore on every update — equality is what stops an unchanged snapshot from rebuilding the board.

`bloc_concurrency` handles the event races: rapid keyboard input and submissions need explicit ordering rather than whatever interleaving arrives.

---

## Main features

- **Single-player mode** against a random or custom answer.
- **Two-player head-to-head** over a shared room code, racing the same word on a timer.
- **Configurable round length** and answer source.
- **Derived keyboard state** showing which letters remain viable across all guesses.
- **Result sharing** and win celebrations.

---

## Getting started

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # freezed + json_serializable
flutter run
```

Requires a Firebase project; `lib/firebase_options.dart` is generated by `flutterfire configure`.

---
