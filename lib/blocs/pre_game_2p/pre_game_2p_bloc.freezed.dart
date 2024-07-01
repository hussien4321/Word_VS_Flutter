// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_game_2p_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreGame2pState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)
        newCreateLobby,
    required TResult Function(WordleeSession2P session, bool isLoading)
        createdLobby,
    required TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)
        newJoinLobby,
    required TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)
        joinedLobby,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult? Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult? Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult? Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pInitState value) init,
    required TResult Function(PreGame2pNewCreateLobbyState value)
        newCreateLobby,
    required TResult Function(PreGame2pCreatedLobbyState value) createdLobby,
    required TResult Function(PreGame2pNewJoinLobbyState value) newJoinLobby,
    required TResult Function(PreGame2pJoinedLobbyState value) joinedLobby,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pInitState value)? init,
    TResult? Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult? Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult? Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult? Function(PreGame2pJoinedLobbyState value)? joinedLobby,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pInitState value)? init,
    TResult Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult Function(PreGame2pJoinedLobbyState value)? joinedLobby,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreGame2pStateCopyWith<$Res> {
  factory $PreGame2pStateCopyWith(
          PreGame2pState value, $Res Function(PreGame2pState) then) =
      _$PreGame2pStateCopyWithImpl<$Res, PreGame2pState>;
}

/// @nodoc
class _$PreGame2pStateCopyWithImpl<$Res, $Val extends PreGame2pState>
    implements $PreGame2pStateCopyWith<$Res> {
  _$PreGame2pStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreGame2pInitStateImplCopyWith<$Res> {
  factory _$$PreGame2pInitStateImplCopyWith(_$PreGame2pInitStateImpl value,
          $Res Function(_$PreGame2pInitStateImpl) then) =
      __$$PreGame2pInitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreGame2pInitStateImplCopyWithImpl<$Res>
    extends _$PreGame2pStateCopyWithImpl<$Res, _$PreGame2pInitStateImpl>
    implements _$$PreGame2pInitStateImplCopyWith<$Res> {
  __$$PreGame2pInitStateImplCopyWithImpl(_$PreGame2pInitStateImpl _value,
      $Res Function(_$PreGame2pInitStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreGame2pInitStateImpl implements PreGame2pInitState {
  _$PreGame2pInitStateImpl();

  @override
  String toString() {
    return 'PreGame2pState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreGame2pInitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)
        newCreateLobby,
    required TResult Function(WordleeSession2P session, bool isLoading)
        createdLobby,
    required TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)
        newJoinLobby,
    required TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)
        joinedLobby,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult? Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult? Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult? Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pInitState value) init,
    required TResult Function(PreGame2pNewCreateLobbyState value)
        newCreateLobby,
    required TResult Function(PreGame2pCreatedLobbyState value) createdLobby,
    required TResult Function(PreGame2pNewJoinLobbyState value) newJoinLobby,
    required TResult Function(PreGame2pJoinedLobbyState value) joinedLobby,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pInitState value)? init,
    TResult? Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult? Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult? Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult? Function(PreGame2pJoinedLobbyState value)? joinedLobby,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pInitState value)? init,
    TResult Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult Function(PreGame2pJoinedLobbyState value)? joinedLobby,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PreGame2pInitState implements PreGame2pState {
  factory PreGame2pInitState() = _$PreGame2pInitStateImpl;
}

/// @nodoc
abstract class _$$PreGame2pNewCreateLobbyStateImplCopyWith<$Res> {
  factory _$$PreGame2pNewCreateLobbyStateImplCopyWith(
          _$PreGame2pNewCreateLobbyStateImpl value,
          $Res Function(_$PreGame2pNewCreateLobbyStateImpl) then) =
      __$$PreGame2pNewCreateLobbyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WordleeTime time,
      String name,
      WordleeAnswerType answerType,
      String? customAnswer,
      String? errorText,
      bool isLoading});
}

/// @nodoc
class __$$PreGame2pNewCreateLobbyStateImplCopyWithImpl<$Res>
    extends _$PreGame2pStateCopyWithImpl<$Res,
        _$PreGame2pNewCreateLobbyStateImpl>
    implements _$$PreGame2pNewCreateLobbyStateImplCopyWith<$Res> {
  __$$PreGame2pNewCreateLobbyStateImplCopyWithImpl(
      _$PreGame2pNewCreateLobbyStateImpl _value,
      $Res Function(_$PreGame2pNewCreateLobbyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? name = null,
    Object? answerType = null,
    Object? customAnswer = freezed,
    Object? errorText = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$PreGame2pNewCreateLobbyStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as WordleeAnswerType,
      customAnswer: freezed == customAnswer
          ? _value.customAnswer
          : customAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreGame2pNewCreateLobbyStateImpl
    implements PreGame2pNewCreateLobbyState {
  _$PreGame2pNewCreateLobbyStateImpl(
      {required this.time,
      required this.name,
      required this.answerType,
      required this.customAnswer,
      required this.errorText,
      required this.isLoading});

  @override
  final WordleeTime time;
  @override
  final String name;
  @override
  final WordleeAnswerType answerType;
  @override
  final String? customAnswer;
  @override
  final String? errorText;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PreGame2pState.newCreateLobby(time: $time, name: $name, answerType: $answerType, customAnswer: $customAnswer, errorText: $errorText, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pNewCreateLobbyStateImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.answerType, answerType) ||
                other.answerType == answerType) &&
            (identical(other.customAnswer, customAnswer) ||
                other.customAnswer == customAnswer) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, time, name, answerType, customAnswer, errorText, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pNewCreateLobbyStateImplCopyWith<
          _$PreGame2pNewCreateLobbyStateImpl>
      get copyWith => __$$PreGame2pNewCreateLobbyStateImplCopyWithImpl<
          _$PreGame2pNewCreateLobbyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)
        newCreateLobby,
    required TResult Function(WordleeSession2P session, bool isLoading)
        createdLobby,
    required TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)
        newJoinLobby,
    required TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)
        joinedLobby,
  }) {
    return newCreateLobby(
        time, name, answerType, customAnswer, errorText, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult? Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult? Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult? Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
  }) {
    return newCreateLobby?.call(
        time, name, answerType, customAnswer, errorText, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
    required TResult orElse(),
  }) {
    if (newCreateLobby != null) {
      return newCreateLobby(
          time, name, answerType, customAnswer, errorText, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pInitState value) init,
    required TResult Function(PreGame2pNewCreateLobbyState value)
        newCreateLobby,
    required TResult Function(PreGame2pCreatedLobbyState value) createdLobby,
    required TResult Function(PreGame2pNewJoinLobbyState value) newJoinLobby,
    required TResult Function(PreGame2pJoinedLobbyState value) joinedLobby,
  }) {
    return newCreateLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pInitState value)? init,
    TResult? Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult? Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult? Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult? Function(PreGame2pJoinedLobbyState value)? joinedLobby,
  }) {
    return newCreateLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pInitState value)? init,
    TResult Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult Function(PreGame2pJoinedLobbyState value)? joinedLobby,
    required TResult orElse(),
  }) {
    if (newCreateLobby != null) {
      return newCreateLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pNewCreateLobbyState implements PreGame2pState {
  factory PreGame2pNewCreateLobbyState(
      {required final WordleeTime time,
      required final String name,
      required final WordleeAnswerType answerType,
      required final String? customAnswer,
      required final String? errorText,
      required final bool isLoading}) = _$PreGame2pNewCreateLobbyStateImpl;

  WordleeTime get time;
  String get name;
  WordleeAnswerType get answerType;
  String? get customAnswer;
  String? get errorText;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$PreGame2pNewCreateLobbyStateImplCopyWith<
          _$PreGame2pNewCreateLobbyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pCreatedLobbyStateImplCopyWith<$Res> {
  factory _$$PreGame2pCreatedLobbyStateImplCopyWith(
          _$PreGame2pCreatedLobbyStateImpl value,
          $Res Function(_$PreGame2pCreatedLobbyStateImpl) then) =
      __$$PreGame2pCreatedLobbyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordleeSession2P session, bool isLoading});
}

/// @nodoc
class __$$PreGame2pCreatedLobbyStateImplCopyWithImpl<$Res>
    extends _$PreGame2pStateCopyWithImpl<$Res, _$PreGame2pCreatedLobbyStateImpl>
    implements _$$PreGame2pCreatedLobbyStateImplCopyWith<$Res> {
  __$$PreGame2pCreatedLobbyStateImplCopyWithImpl(
      _$PreGame2pCreatedLobbyStateImpl _value,
      $Res Function(_$PreGame2pCreatedLobbyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$PreGame2pCreatedLobbyStateImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as WordleeSession2P,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreGame2pCreatedLobbyStateImpl implements PreGame2pCreatedLobbyState {
  _$PreGame2pCreatedLobbyStateImpl(
      {required this.session, required this.isLoading});

  @override
  final WordleeSession2P session;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PreGame2pState.createdLobby(session: $session, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pCreatedLobbyStateImpl &&
            const DeepCollectionEquality().equals(other.session, session) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(session), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pCreatedLobbyStateImplCopyWith<_$PreGame2pCreatedLobbyStateImpl>
      get copyWith => __$$PreGame2pCreatedLobbyStateImplCopyWithImpl<
          _$PreGame2pCreatedLobbyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)
        newCreateLobby,
    required TResult Function(WordleeSession2P session, bool isLoading)
        createdLobby,
    required TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)
        newJoinLobby,
    required TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)
        joinedLobby,
  }) {
    return createdLobby(session, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult? Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult? Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult? Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
  }) {
    return createdLobby?.call(session, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
    required TResult orElse(),
  }) {
    if (createdLobby != null) {
      return createdLobby(session, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pInitState value) init,
    required TResult Function(PreGame2pNewCreateLobbyState value)
        newCreateLobby,
    required TResult Function(PreGame2pCreatedLobbyState value) createdLobby,
    required TResult Function(PreGame2pNewJoinLobbyState value) newJoinLobby,
    required TResult Function(PreGame2pJoinedLobbyState value) joinedLobby,
  }) {
    return createdLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pInitState value)? init,
    TResult? Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult? Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult? Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult? Function(PreGame2pJoinedLobbyState value)? joinedLobby,
  }) {
    return createdLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pInitState value)? init,
    TResult Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult Function(PreGame2pJoinedLobbyState value)? joinedLobby,
    required TResult orElse(),
  }) {
    if (createdLobby != null) {
      return createdLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pCreatedLobbyState implements PreGame2pState {
  factory PreGame2pCreatedLobbyState(
      {required final WordleeSession2P session,
      required final bool isLoading}) = _$PreGame2pCreatedLobbyStateImpl;

  WordleeSession2P get session;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$PreGame2pCreatedLobbyStateImplCopyWith<_$PreGame2pCreatedLobbyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pNewJoinLobbyStateImplCopyWith<$Res> {
  factory _$$PreGame2pNewJoinLobbyStateImplCopyWith(
          _$PreGame2pNewJoinLobbyStateImpl value,
          $Res Function(_$PreGame2pNewJoinLobbyStateImpl) then) =
      __$$PreGame2pNewJoinLobbyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String joinRoomId, String name, bool isLoading, String? textError});
}

/// @nodoc
class __$$PreGame2pNewJoinLobbyStateImplCopyWithImpl<$Res>
    extends _$PreGame2pStateCopyWithImpl<$Res, _$PreGame2pNewJoinLobbyStateImpl>
    implements _$$PreGame2pNewJoinLobbyStateImplCopyWith<$Res> {
  __$$PreGame2pNewJoinLobbyStateImplCopyWithImpl(
      _$PreGame2pNewJoinLobbyStateImpl _value,
      $Res Function(_$PreGame2pNewJoinLobbyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRoomId = null,
    Object? name = null,
    Object? isLoading = null,
    Object? textError = freezed,
  }) {
    return _then(_$PreGame2pNewJoinLobbyStateImpl(
      joinRoomId: null == joinRoomId
          ? _value.joinRoomId
          : joinRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      textError: freezed == textError
          ? _value.textError
          : textError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PreGame2pNewJoinLobbyStateImpl implements PreGame2pNewJoinLobbyState {
  _$PreGame2pNewJoinLobbyStateImpl(
      {required this.joinRoomId,
      required this.name,
      required this.isLoading,
      required this.textError});

  @override
  final String joinRoomId;
  @override
  final String name;
  @override
  final bool isLoading;
  @override
  final String? textError;

  @override
  String toString() {
    return 'PreGame2pState.newJoinLobby(joinRoomId: $joinRoomId, name: $name, isLoading: $isLoading, textError: $textError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pNewJoinLobbyStateImpl &&
            (identical(other.joinRoomId, joinRoomId) ||
                other.joinRoomId == joinRoomId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.textError, textError) ||
                other.textError == textError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, joinRoomId, name, isLoading, textError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pNewJoinLobbyStateImplCopyWith<_$PreGame2pNewJoinLobbyStateImpl>
      get copyWith => __$$PreGame2pNewJoinLobbyStateImplCopyWithImpl<
          _$PreGame2pNewJoinLobbyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)
        newCreateLobby,
    required TResult Function(WordleeSession2P session, bool isLoading)
        createdLobby,
    required TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)
        newJoinLobby,
    required TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)
        joinedLobby,
  }) {
    return newJoinLobby(joinRoomId, name, isLoading, textError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult? Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult? Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult? Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
  }) {
    return newJoinLobby?.call(joinRoomId, name, isLoading, textError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
    required TResult orElse(),
  }) {
    if (newJoinLobby != null) {
      return newJoinLobby(joinRoomId, name, isLoading, textError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pInitState value) init,
    required TResult Function(PreGame2pNewCreateLobbyState value)
        newCreateLobby,
    required TResult Function(PreGame2pCreatedLobbyState value) createdLobby,
    required TResult Function(PreGame2pNewJoinLobbyState value) newJoinLobby,
    required TResult Function(PreGame2pJoinedLobbyState value) joinedLobby,
  }) {
    return newJoinLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pInitState value)? init,
    TResult? Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult? Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult? Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult? Function(PreGame2pJoinedLobbyState value)? joinedLobby,
  }) {
    return newJoinLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pInitState value)? init,
    TResult Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult Function(PreGame2pJoinedLobbyState value)? joinedLobby,
    required TResult orElse(),
  }) {
    if (newJoinLobby != null) {
      return newJoinLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pNewJoinLobbyState implements PreGame2pState {
  factory PreGame2pNewJoinLobbyState(
      {required final String joinRoomId,
      required final String name,
      required final bool isLoading,
      required final String? textError}) = _$PreGame2pNewJoinLobbyStateImpl;

  String get joinRoomId;
  String get name;
  bool get isLoading;
  String? get textError;
  @JsonKey(ignore: true)
  _$$PreGame2pNewJoinLobbyStateImplCopyWith<_$PreGame2pNewJoinLobbyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pJoinedLobbyStateImplCopyWith<$Res> {
  factory _$$PreGame2pJoinedLobbyStateImplCopyWith(
          _$PreGame2pJoinedLobbyStateImpl value,
          $Res Function(_$PreGame2pJoinedLobbyStateImpl) then) =
      __$$PreGame2pJoinedLobbyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WordleeSession2P session,
      bool isLoading,
      String? customAnswer,
      String? errorText});
}

/// @nodoc
class __$$PreGame2pJoinedLobbyStateImplCopyWithImpl<$Res>
    extends _$PreGame2pStateCopyWithImpl<$Res, _$PreGame2pJoinedLobbyStateImpl>
    implements _$$PreGame2pJoinedLobbyStateImplCopyWith<$Res> {
  __$$PreGame2pJoinedLobbyStateImplCopyWithImpl(
      _$PreGame2pJoinedLobbyStateImpl _value,
      $Res Function(_$PreGame2pJoinedLobbyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? isLoading = null,
    Object? customAnswer = freezed,
    Object? errorText = freezed,
  }) {
    return _then(_$PreGame2pJoinedLobbyStateImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as WordleeSession2P,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customAnswer: freezed == customAnswer
          ? _value.customAnswer
          : customAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PreGame2pJoinedLobbyStateImpl implements PreGame2pJoinedLobbyState {
  _$PreGame2pJoinedLobbyStateImpl(
      {required this.session,
      required this.isLoading,
      required this.customAnswer,
      required this.errorText});

  @override
  final WordleeSession2P session;
  @override
  final bool isLoading;
  @override
  final String? customAnswer;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'PreGame2pState.joinedLobby(session: $session, isLoading: $isLoading, customAnswer: $customAnswer, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pJoinedLobbyStateImpl &&
            const DeepCollectionEquality().equals(other.session, session) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.customAnswer, customAnswer) ||
                other.customAnswer == customAnswer) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(session),
      isLoading,
      customAnswer,
      errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pJoinedLobbyStateImplCopyWith<_$PreGame2pJoinedLobbyStateImpl>
      get copyWith => __$$PreGame2pJoinedLobbyStateImplCopyWithImpl<
          _$PreGame2pJoinedLobbyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)
        newCreateLobby,
    required TResult Function(WordleeSession2P session, bool isLoading)
        createdLobby,
    required TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)
        newJoinLobby,
    required TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)
        joinedLobby,
  }) {
    return joinedLobby(session, isLoading, customAnswer, errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult? Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult? Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult? Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
  }) {
    return joinedLobby?.call(session, isLoading, customAnswer, errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            WordleeTime time,
            String name,
            WordleeAnswerType answerType,
            String? customAnswer,
            String? errorText,
            bool isLoading)?
        newCreateLobby,
    TResult Function(WordleeSession2P session, bool isLoading)? createdLobby,
    TResult Function(
            String joinRoomId, String name, bool isLoading, String? textError)?
        newJoinLobby,
    TResult Function(WordleeSession2P session, bool isLoading,
            String? customAnswer, String? errorText)?
        joinedLobby,
    required TResult orElse(),
  }) {
    if (joinedLobby != null) {
      return joinedLobby(session, isLoading, customAnswer, errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pInitState value) init,
    required TResult Function(PreGame2pNewCreateLobbyState value)
        newCreateLobby,
    required TResult Function(PreGame2pCreatedLobbyState value) createdLobby,
    required TResult Function(PreGame2pNewJoinLobbyState value) newJoinLobby,
    required TResult Function(PreGame2pJoinedLobbyState value) joinedLobby,
  }) {
    return joinedLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pInitState value)? init,
    TResult? Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult? Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult? Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult? Function(PreGame2pJoinedLobbyState value)? joinedLobby,
  }) {
    return joinedLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pInitState value)? init,
    TResult Function(PreGame2pNewCreateLobbyState value)? newCreateLobby,
    TResult Function(PreGame2pCreatedLobbyState value)? createdLobby,
    TResult Function(PreGame2pNewJoinLobbyState value)? newJoinLobby,
    TResult Function(PreGame2pJoinedLobbyState value)? joinedLobby,
    required TResult orElse(),
  }) {
    if (joinedLobby != null) {
      return joinedLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pJoinedLobbyState implements PreGame2pState {
  factory PreGame2pJoinedLobbyState(
      {required final WordleeSession2P session,
      required final bool isLoading,
      required final String? customAnswer,
      required final String? errorText}) = _$PreGame2pJoinedLobbyStateImpl;

  WordleeSession2P get session;
  bool get isLoading;
  String? get customAnswer;
  String? get errorText;
  @JsonKey(ignore: true)
  _$$PreGame2pJoinedLobbyStateImplCopyWith<_$PreGame2pJoinedLobbyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreGame2pEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreGame2pEventCopyWith<$Res> {
  factory $PreGame2pEventCopyWith(
          PreGame2pEvent value, $Res Function(PreGame2pEvent) then) =
      _$PreGame2pEventCopyWithImpl<$Res, PreGame2pEvent>;
}

/// @nodoc
class _$PreGame2pEventCopyWithImpl<$Res, $Val extends PreGame2pEvent>
    implements $PreGame2pEventCopyWith<$Res> {
  _$PreGame2pEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreGame2pSelectModeEventImplCopyWith<$Res> {
  factory _$$PreGame2pSelectModeEventImplCopyWith(
          _$PreGame2pSelectModeEventImpl value,
          $Res Function(_$PreGame2pSelectModeEventImpl) then) =
      __$$PreGame2pSelectModeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCreating});
}

/// @nodoc
class __$$PreGame2pSelectModeEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res, _$PreGame2pSelectModeEventImpl>
    implements _$$PreGame2pSelectModeEventImplCopyWith<$Res> {
  __$$PreGame2pSelectModeEventImplCopyWithImpl(
      _$PreGame2pSelectModeEventImpl _value,
      $Res Function(_$PreGame2pSelectModeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCreating = null,
  }) {
    return _then(_$PreGame2pSelectModeEventImpl(
      isCreating: null == isCreating
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreGame2pSelectModeEventImpl implements PreGame2pSelectModeEvent {
  _$PreGame2pSelectModeEventImpl({required this.isCreating});

  @override
  final bool isCreating;

  @override
  String toString() {
    return 'PreGame2pEvent.selectMode(isCreating: $isCreating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pSelectModeEventImpl &&
            (identical(other.isCreating, isCreating) ||
                other.isCreating == isCreating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCreating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pSelectModeEventImplCopyWith<_$PreGame2pSelectModeEventImpl>
      get copyWith => __$$PreGame2pSelectModeEventImplCopyWithImpl<
          _$PreGame2pSelectModeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return selectMode(isCreating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return selectMode?.call(isCreating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (selectMode != null) {
      return selectMode(isCreating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return selectMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return selectMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (selectMode != null) {
      return selectMode(this);
    }
    return orElse();
  }
}

abstract class PreGame2pSelectModeEvent implements PreGame2pEvent {
  factory PreGame2pSelectModeEvent({required final bool isCreating}) =
      _$PreGame2pSelectModeEventImpl;

  bool get isCreating;
  @JsonKey(ignore: true)
  _$$PreGame2pSelectModeEventImplCopyWith<_$PreGame2pSelectModeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pUpdateCreateLobbyEventImplCopyWith<$Res> {
  factory _$$PreGame2pUpdateCreateLobbyEventImplCopyWith(
          _$PreGame2pUpdateCreateLobbyEventImpl value,
          $Res Function(_$PreGame2pUpdateCreateLobbyEventImpl) then) =
      __$$PreGame2pUpdateCreateLobbyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WordleeTime time,
      String name,
      WordleeAnswerType answerType,
      String? answer});
}

/// @nodoc
class __$$PreGame2pUpdateCreateLobbyEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res,
        _$PreGame2pUpdateCreateLobbyEventImpl>
    implements _$$PreGame2pUpdateCreateLobbyEventImplCopyWith<$Res> {
  __$$PreGame2pUpdateCreateLobbyEventImplCopyWithImpl(
      _$PreGame2pUpdateCreateLobbyEventImpl _value,
      $Res Function(_$PreGame2pUpdateCreateLobbyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? name = null,
    Object? answerType = null,
    Object? answer = freezed,
  }) {
    return _then(_$PreGame2pUpdateCreateLobbyEventImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as WordleeTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as WordleeAnswerType,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PreGame2pUpdateCreateLobbyEventImpl
    implements PreGame2pUpdateCreateLobbyEvent {
  _$PreGame2pUpdateCreateLobbyEventImpl(
      {required this.time,
      required this.name,
      required this.answerType,
      required this.answer});

  @override
  final WordleeTime time;
  @override
  final String name;
  @override
  final WordleeAnswerType answerType;
  @override
  final String? answer;

  @override
  String toString() {
    return 'PreGame2pEvent.updateCreateLobby(time: $time, name: $name, answerType: $answerType, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pUpdateCreateLobbyEventImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.answerType, answerType) ||
                other.answerType == answerType) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, name, answerType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pUpdateCreateLobbyEventImplCopyWith<
          _$PreGame2pUpdateCreateLobbyEventImpl>
      get copyWith => __$$PreGame2pUpdateCreateLobbyEventImplCopyWithImpl<
          _$PreGame2pUpdateCreateLobbyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return updateCreateLobby(time, name, answerType, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return updateCreateLobby?.call(time, name, answerType, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (updateCreateLobby != null) {
      return updateCreateLobby(time, name, answerType, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return updateCreateLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return updateCreateLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (updateCreateLobby != null) {
      return updateCreateLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pUpdateCreateLobbyEvent implements PreGame2pEvent {
  factory PreGame2pUpdateCreateLobbyEvent(
      {required final WordleeTime time,
      required final String name,
      required final WordleeAnswerType answerType,
      required final String? answer}) = _$PreGame2pUpdateCreateLobbyEventImpl;

  WordleeTime get time;
  String get name;
  WordleeAnswerType get answerType;
  String? get answer;
  @JsonKey(ignore: true)
  _$$PreGame2pUpdateCreateLobbyEventImplCopyWith<
          _$PreGame2pUpdateCreateLobbyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pUpdateJoinLobbyEventImplCopyWith<$Res> {
  factory _$$PreGame2pUpdateJoinLobbyEventImplCopyWith(
          _$PreGame2pUpdateJoinLobbyEventImpl value,
          $Res Function(_$PreGame2pUpdateJoinLobbyEventImpl) then) =
      __$$PreGame2pUpdateJoinLobbyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomID, String name});
}

/// @nodoc
class __$$PreGame2pUpdateJoinLobbyEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res,
        _$PreGame2pUpdateJoinLobbyEventImpl>
    implements _$$PreGame2pUpdateJoinLobbyEventImplCopyWith<$Res> {
  __$$PreGame2pUpdateJoinLobbyEventImplCopyWithImpl(
      _$PreGame2pUpdateJoinLobbyEventImpl _value,
      $Res Function(_$PreGame2pUpdateJoinLobbyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomID = null,
    Object? name = null,
  }) {
    return _then(_$PreGame2pUpdateJoinLobbyEventImpl(
      roomID: null == roomID
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreGame2pUpdateJoinLobbyEventImpl
    implements PreGame2pUpdateJoinLobbyEvent {
  _$PreGame2pUpdateJoinLobbyEventImpl(
      {required this.roomID, required this.name});

  @override
  final String roomID;
  @override
  final String name;

  @override
  String toString() {
    return 'PreGame2pEvent.updateJoinLobby(roomID: $roomID, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pUpdateJoinLobbyEventImpl &&
            (identical(other.roomID, roomID) || other.roomID == roomID) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomID, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pUpdateJoinLobbyEventImplCopyWith<
          _$PreGame2pUpdateJoinLobbyEventImpl>
      get copyWith => __$$PreGame2pUpdateJoinLobbyEventImplCopyWithImpl<
          _$PreGame2pUpdateJoinLobbyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return updateJoinLobby(roomID, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return updateJoinLobby?.call(roomID, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (updateJoinLobby != null) {
      return updateJoinLobby(roomID, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return updateJoinLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return updateJoinLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (updateJoinLobby != null) {
      return updateJoinLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pUpdateJoinLobbyEvent implements PreGame2pEvent {
  factory PreGame2pUpdateJoinLobbyEvent(
      {required final String roomID,
      required final String name}) = _$PreGame2pUpdateJoinLobbyEventImpl;

  String get roomID;
  String get name;
  @JsonKey(ignore: true)
  _$$PreGame2pUpdateJoinLobbyEventImplCopyWith<
          _$PreGame2pUpdateJoinLobbyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pCreateLobbyEventImplCopyWith<$Res> {
  factory _$$PreGame2pCreateLobbyEventImplCopyWith(
          _$PreGame2pCreateLobbyEventImpl value,
          $Res Function(_$PreGame2pCreateLobbyEventImpl) then) =
      __$$PreGame2pCreateLobbyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PreGame2pNewCreateLobbyState state});
}

/// @nodoc
class __$$PreGame2pCreateLobbyEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res, _$PreGame2pCreateLobbyEventImpl>
    implements _$$PreGame2pCreateLobbyEventImplCopyWith<$Res> {
  __$$PreGame2pCreateLobbyEventImplCopyWithImpl(
      _$PreGame2pCreateLobbyEventImpl _value,
      $Res Function(_$PreGame2pCreateLobbyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$PreGame2pCreateLobbyEventImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PreGame2pNewCreateLobbyState,
    ));
  }
}

/// @nodoc

class _$PreGame2pCreateLobbyEventImpl implements PreGame2pCreateLobbyEvent {
  _$PreGame2pCreateLobbyEventImpl({required this.state});

  @override
  final PreGame2pNewCreateLobbyState state;

  @override
  String toString() {
    return 'PreGame2pEvent.createLobby(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pCreateLobbyEventImpl &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pCreateLobbyEventImplCopyWith<_$PreGame2pCreateLobbyEventImpl>
      get copyWith => __$$PreGame2pCreateLobbyEventImplCopyWithImpl<
          _$PreGame2pCreateLobbyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return createLobby(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return createLobby?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (createLobby != null) {
      return createLobby(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return createLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return createLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (createLobby != null) {
      return createLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pCreateLobbyEvent implements PreGame2pEvent {
  factory PreGame2pCreateLobbyEvent(
          {required final PreGame2pNewCreateLobbyState state}) =
      _$PreGame2pCreateLobbyEventImpl;

  PreGame2pNewCreateLobbyState get state;
  @JsonKey(ignore: true)
  _$$PreGame2pCreateLobbyEventImplCopyWith<_$PreGame2pCreateLobbyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pJoinLobbyEventImplCopyWith<$Res> {
  factory _$$PreGame2pJoinLobbyEventImplCopyWith(
          _$PreGame2pJoinLobbyEventImpl value,
          $Res Function(_$PreGame2pJoinLobbyEventImpl) then) =
      __$$PreGame2pJoinLobbyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PreGame2pNewJoinLobbyState state});
}

/// @nodoc
class __$$PreGame2pJoinLobbyEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res, _$PreGame2pJoinLobbyEventImpl>
    implements _$$PreGame2pJoinLobbyEventImplCopyWith<$Res> {
  __$$PreGame2pJoinLobbyEventImplCopyWithImpl(
      _$PreGame2pJoinLobbyEventImpl _value,
      $Res Function(_$PreGame2pJoinLobbyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$PreGame2pJoinLobbyEventImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PreGame2pNewJoinLobbyState,
    ));
  }
}

/// @nodoc

class _$PreGame2pJoinLobbyEventImpl implements PreGame2pJoinLobbyEvent {
  _$PreGame2pJoinLobbyEventImpl({required this.state});

  @override
  final PreGame2pNewJoinLobbyState state;

  @override
  String toString() {
    return 'PreGame2pEvent.joinLobby(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pJoinLobbyEventImpl &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pJoinLobbyEventImplCopyWith<_$PreGame2pJoinLobbyEventImpl>
      get copyWith => __$$PreGame2pJoinLobbyEventImplCopyWithImpl<
          _$PreGame2pJoinLobbyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return joinLobby(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return joinLobby?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (joinLobby != null) {
      return joinLobby(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return joinLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return joinLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (joinLobby != null) {
      return joinLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pJoinLobbyEvent implements PreGame2pEvent {
  factory PreGame2pJoinLobbyEvent(
          {required final PreGame2pNewJoinLobbyState state}) =
      _$PreGame2pJoinLobbyEventImpl;

  PreGame2pNewJoinLobbyState get state;
  @JsonKey(ignore: true)
  _$$PreGame2pJoinLobbyEventImplCopyWith<_$PreGame2pJoinLobbyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pSubmitCustomAnswerEventImplCopyWith<$Res> {
  factory _$$PreGame2pSubmitCustomAnswerEventImplCopyWith(
          _$PreGame2pSubmitCustomAnswerEventImpl value,
          $Res Function(_$PreGame2pSubmitCustomAnswerEventImpl) then) =
      __$$PreGame2pSubmitCustomAnswerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PreGame2pJoinedLobbyState state, String customAnswer});
}

/// @nodoc
class __$$PreGame2pSubmitCustomAnswerEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res,
        _$PreGame2pSubmitCustomAnswerEventImpl>
    implements _$$PreGame2pSubmitCustomAnswerEventImplCopyWith<$Res> {
  __$$PreGame2pSubmitCustomAnswerEventImplCopyWithImpl(
      _$PreGame2pSubmitCustomAnswerEventImpl _value,
      $Res Function(_$PreGame2pSubmitCustomAnswerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? customAnswer = null,
  }) {
    return _then(_$PreGame2pSubmitCustomAnswerEventImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PreGame2pJoinedLobbyState,
      customAnswer: null == customAnswer
          ? _value.customAnswer
          : customAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreGame2pSubmitCustomAnswerEventImpl
    implements PreGame2pSubmitCustomAnswerEvent {
  _$PreGame2pSubmitCustomAnswerEventImpl(
      {required this.state, required this.customAnswer});

  @override
  final PreGame2pJoinedLobbyState state;
  @override
  final String customAnswer;

  @override
  String toString() {
    return 'PreGame2pEvent.submitCustomAnswer(state: $state, customAnswer: $customAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pSubmitCustomAnswerEventImpl &&
            const DeepCollectionEquality().equals(other.state, state) &&
            (identical(other.customAnswer, customAnswer) ||
                other.customAnswer == customAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(state), customAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pSubmitCustomAnswerEventImplCopyWith<
          _$PreGame2pSubmitCustomAnswerEventImpl>
      get copyWith => __$$PreGame2pSubmitCustomAnswerEventImplCopyWithImpl<
          _$PreGame2pSubmitCustomAnswerEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return submitCustomAnswer(state, customAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return submitCustomAnswer?.call(state, customAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (submitCustomAnswer != null) {
      return submitCustomAnswer(state, customAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return submitCustomAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return submitCustomAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (submitCustomAnswer != null) {
      return submitCustomAnswer(this);
    }
    return orElse();
  }
}

abstract class PreGame2pSubmitCustomAnswerEvent implements PreGame2pEvent {
  factory PreGame2pSubmitCustomAnswerEvent(
          {required final PreGame2pJoinedLobbyState state,
          required final String customAnswer}) =
      _$PreGame2pSubmitCustomAnswerEventImpl;

  PreGame2pJoinedLobbyState get state;
  String get customAnswer;
  @JsonKey(ignore: true)
  _$$PreGame2pSubmitCustomAnswerEventImplCopyWith<
          _$PreGame2pSubmitCustomAnswerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pUpdateJoinedLobbyEventImplCopyWith<$Res> {
  factory _$$PreGame2pUpdateJoinedLobbyEventImplCopyWith(
          _$PreGame2pUpdateJoinedLobbyEventImpl value,
          $Res Function(_$PreGame2pUpdateJoinedLobbyEventImpl) then) =
      __$$PreGame2pUpdateJoinedLobbyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$PreGame2pUpdateJoinedLobbyEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res,
        _$PreGame2pUpdateJoinedLobbyEventImpl>
    implements _$$PreGame2pUpdateJoinedLobbyEventImplCopyWith<$Res> {
  __$$PreGame2pUpdateJoinedLobbyEventImplCopyWithImpl(
      _$PreGame2pUpdateJoinedLobbyEventImpl _value,
      $Res Function(_$PreGame2pUpdateJoinedLobbyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$PreGame2pUpdateJoinedLobbyEventImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreGame2pUpdateJoinedLobbyEventImpl
    implements PreGame2pUpdateJoinedLobbyEvent {
  _$PreGame2pUpdateJoinedLobbyEventImpl({required this.answer});

  @override
  final String answer;

  @override
  String toString() {
    return 'PreGame2pEvent.updateJoinedLobby(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pUpdateJoinedLobbyEventImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pUpdateJoinedLobbyEventImplCopyWith<
          _$PreGame2pUpdateJoinedLobbyEventImpl>
      get copyWith => __$$PreGame2pUpdateJoinedLobbyEventImplCopyWithImpl<
          _$PreGame2pUpdateJoinedLobbyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return updateJoinedLobby(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return updateJoinedLobby?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (updateJoinedLobby != null) {
      return updateJoinedLobby(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return updateJoinedLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return updateJoinedLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (updateJoinedLobby != null) {
      return updateJoinedLobby(this);
    }
    return orElse();
  }
}

abstract class PreGame2pUpdateJoinedLobbyEvent implements PreGame2pEvent {
  factory PreGame2pUpdateJoinedLobbyEvent({required final String answer}) =
      _$PreGame2pUpdateJoinedLobbyEventImpl;

  String get answer;
  @JsonKey(ignore: true)
  _$$PreGame2pUpdateJoinedLobbyEventImplCopyWith<
          _$PreGame2pUpdateJoinedLobbyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pStartGameEventImplCopyWith<$Res> {
  factory _$$PreGame2pStartGameEventImplCopyWith(
          _$PreGame2pStartGameEventImpl value,
          $Res Function(_$PreGame2pStartGameEventImpl) then) =
      __$$PreGame2pStartGameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PreGame2pCreatedLobbyState state});
}

/// @nodoc
class __$$PreGame2pStartGameEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res, _$PreGame2pStartGameEventImpl>
    implements _$$PreGame2pStartGameEventImplCopyWith<$Res> {
  __$$PreGame2pStartGameEventImplCopyWithImpl(
      _$PreGame2pStartGameEventImpl _value,
      $Res Function(_$PreGame2pStartGameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$PreGame2pStartGameEventImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PreGame2pCreatedLobbyState,
    ));
  }
}

/// @nodoc

class _$PreGame2pStartGameEventImpl implements PreGame2pStartGameEvent {
  _$PreGame2pStartGameEventImpl({required this.state});

  @override
  final PreGame2pCreatedLobbyState state;

  @override
  String toString() {
    return 'PreGame2pEvent.startGame(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pStartGameEventImpl &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreGame2pStartGameEventImplCopyWith<_$PreGame2pStartGameEventImpl>
      get copyWith => __$$PreGame2pStartGameEventImplCopyWithImpl<
          _$PreGame2pStartGameEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return startGame(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return startGame?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class PreGame2pStartGameEvent implements PreGame2pEvent {
  factory PreGame2pStartGameEvent(
          {required final PreGame2pCreatedLobbyState state}) =
      _$PreGame2pStartGameEventImpl;

  PreGame2pCreatedLobbyState get state;
  @JsonKey(ignore: true)
  _$$PreGame2pStartGameEventImplCopyWith<_$PreGame2pStartGameEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreGame2pPopToStartEventImplCopyWith<$Res> {
  factory _$$PreGame2pPopToStartEventImplCopyWith(
          _$PreGame2pPopToStartEventImpl value,
          $Res Function(_$PreGame2pPopToStartEventImpl) then) =
      __$$PreGame2pPopToStartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreGame2pPopToStartEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res, _$PreGame2pPopToStartEventImpl>
    implements _$$PreGame2pPopToStartEventImplCopyWith<$Res> {
  __$$PreGame2pPopToStartEventImplCopyWithImpl(
      _$PreGame2pPopToStartEventImpl _value,
      $Res Function(_$PreGame2pPopToStartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreGame2pPopToStartEventImpl implements PreGame2pPopToStartEvent {
  _$PreGame2pPopToStartEventImpl();

  @override
  String toString() {
    return 'PreGame2pEvent.popToStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pPopToStartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return popToStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return popToStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (popToStart != null) {
      return popToStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return popToStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return popToStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (popToStart != null) {
      return popToStart(this);
    }
    return orElse();
  }
}

abstract class PreGame2pPopToStartEvent implements PreGame2pEvent {
  factory PreGame2pPopToStartEvent() = _$PreGame2pPopToStartEventImpl;
}

/// @nodoc
abstract class _$$PreGame2pDisconnectEventImplCopyWith<$Res> {
  factory _$$PreGame2pDisconnectEventImplCopyWith(
          _$PreGame2pDisconnectEventImpl value,
          $Res Function(_$PreGame2pDisconnectEventImpl) then) =
      __$$PreGame2pDisconnectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreGame2pDisconnectEventImplCopyWithImpl<$Res>
    extends _$PreGame2pEventCopyWithImpl<$Res, _$PreGame2pDisconnectEventImpl>
    implements _$$PreGame2pDisconnectEventImplCopyWith<$Res> {
  __$$PreGame2pDisconnectEventImplCopyWithImpl(
      _$PreGame2pDisconnectEventImpl _value,
      $Res Function(_$PreGame2pDisconnectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreGame2pDisconnectEventImpl implements PreGame2pDisconnectEvent {
  _$PreGame2pDisconnectEventImpl();

  @override
  String toString() {
    return 'PreGame2pEvent.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreGame2pDisconnectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCreating) selectMode,
    required TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)
        updateCreateLobby,
    required TResult Function(String roomID, String name) updateJoinLobby,
    required TResult Function(PreGame2pNewCreateLobbyState state) createLobby,
    required TResult Function(PreGame2pNewJoinLobbyState state) joinLobby,
    required TResult Function(
            PreGame2pJoinedLobbyState state, String customAnswer)
        submitCustomAnswer,
    required TResult Function(String answer) updateJoinedLobby,
    required TResult Function(PreGame2pCreatedLobbyState state) startGame,
    required TResult Function() popToStart,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCreating)? selectMode,
    TResult? Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult? Function(String roomID, String name)? updateJoinLobby,
    TResult? Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult? Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult? Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult? Function(String answer)? updateJoinedLobby,
    TResult? Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult? Function()? popToStart,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCreating)? selectMode,
    TResult Function(WordleeTime time, String name,
            WordleeAnswerType answerType, String? answer)?
        updateCreateLobby,
    TResult Function(String roomID, String name)? updateJoinLobby,
    TResult Function(PreGame2pNewCreateLobbyState state)? createLobby,
    TResult Function(PreGame2pNewJoinLobbyState state)? joinLobby,
    TResult Function(PreGame2pJoinedLobbyState state, String customAnswer)?
        submitCustomAnswer,
    TResult Function(String answer)? updateJoinedLobby,
    TResult Function(PreGame2pCreatedLobbyState state)? startGame,
    TResult Function()? popToStart,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreGame2pSelectModeEvent value) selectMode,
    required TResult Function(PreGame2pUpdateCreateLobbyEvent value)
        updateCreateLobby,
    required TResult Function(PreGame2pUpdateJoinLobbyEvent value)
        updateJoinLobby,
    required TResult Function(PreGame2pCreateLobbyEvent value) createLobby,
    required TResult Function(PreGame2pJoinLobbyEvent value) joinLobby,
    required TResult Function(PreGame2pSubmitCustomAnswerEvent value)
        submitCustomAnswer,
    required TResult Function(PreGame2pUpdateJoinedLobbyEvent value)
        updateJoinedLobby,
    required TResult Function(PreGame2pStartGameEvent value) startGame,
    required TResult Function(PreGame2pPopToStartEvent value) popToStart,
    required TResult Function(PreGame2pDisconnectEvent value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult? Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult? Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult? Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult? Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult? Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult? Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult? Function(PreGame2pStartGameEvent value)? startGame,
    TResult? Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult? Function(PreGame2pDisconnectEvent value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreGame2pSelectModeEvent value)? selectMode,
    TResult Function(PreGame2pUpdateCreateLobbyEvent value)? updateCreateLobby,
    TResult Function(PreGame2pUpdateJoinLobbyEvent value)? updateJoinLobby,
    TResult Function(PreGame2pCreateLobbyEvent value)? createLobby,
    TResult Function(PreGame2pJoinLobbyEvent value)? joinLobby,
    TResult Function(PreGame2pSubmitCustomAnswerEvent value)?
        submitCustomAnswer,
    TResult Function(PreGame2pUpdateJoinedLobbyEvent value)? updateJoinedLobby,
    TResult Function(PreGame2pStartGameEvent value)? startGame,
    TResult Function(PreGame2pPopToStartEvent value)? popToStart,
    TResult Function(PreGame2pDisconnectEvent value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class PreGame2pDisconnectEvent implements PreGame2pEvent {
  factory PreGame2pDisconnectEvent() = _$PreGame2pDisconnectEventImpl;
}
