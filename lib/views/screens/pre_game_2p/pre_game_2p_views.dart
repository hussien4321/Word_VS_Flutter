import 'package:flutter/material.dart';
import 'package:wordle_vs/blocs/pre_game_2p/pre_game_2p_bloc.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/utils/string_extensions.dart';
import 'package:wordle_vs/views/screens/pre_game_2p/pre_game_2p_mixin.dart';
import 'package:wordle_vs/views/widgets/pd.row.dart';

abstract class PreGame2pBaseView<T extends PreGame2pState>
    extends StatelessWidget with PreGame2pMixin {
  const PreGame2pBaseView({
    super.key,
    required this.state,
    required this.bloc,
  });

  final PreGame2pBloc bloc;
  final T state;
}

class NewCreateLobbyView extends StatefulWidget {
  const NewCreateLobbyView({
    super.key,
    required this.state,
    required this.bloc,
  });

  final PreGame2pBloc bloc;
  final PreGame2pNewCreateLobbyState state;

  @override
  State<NewCreateLobbyView> createState() => _NewCreateLobbyViewState();
}

class _NewCreateLobbyViewState extends State<NewCreateLobbyView>
    with PreGame2pMixin {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController answerController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildPaddedContent(
      children: [
        buildTimeSelector(
          selectedTime: widget.state.time,
          onChanged: (newTime) => widget.bloc.add(
            PreGame2pEvent.updateCreateLobby(
              time: newTime,
              name: widget.state.name,
              answer: widget.state.customAnswer,
              answerType: widget.state.answerType,
            ),
          ),
        ),
        const SizedBox(height: 8),
        buildTextField(
          context,
          title: 'Name',
          hint: 'Player 1',
          controller: nameController,
          onChanged: (newName) {
            widget.bloc.add(
              PreGame2pEvent.updateCreateLobby(
                time: widget.state.time,
                name: newName,
                answer: widget.state.customAnswer,
                answerType: widget.state.answerType,
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        buildModeSelector(
          selectedTime: widget.state.answerType,
          onChanged: (newType) {
            widget.bloc.add(
              PreGame2pEvent.updateCreateLobby(
                time: widget.state.time,
                name: widget.state.name,
                answer: widget.state.customAnswer,
                answerType: newType,
              ),
            );
          },
        ),
        if (widget.state.answerType.isCustom) ...[
          const SizedBox(height: 8),
          buildTextField(
            context,
            title: 'Answer',
            hint: 'ANGEL',
            subtitle: 'This will be the answer for the other player to guess!',
            maxLength: 5,
            textCapitalization: TextCapitalization.characters,
            errorText: widget.state.errorText,
            controller: nameController,
            onChanged: (newAnswer) {
              widget.bloc.add(
                PreGame2pEvent.updateCreateLobby(
                  time: widget.state.time,
                  name: widget.state.name,
                  answer: newAnswer,
                  answerType: widget.state.answerType,
                ),
              );
            },
          ),
        ],
        const Spacer(),
        buildSubmitButton(
          title: widget.state.isLoading ? 'Creating game...' : 'Create Game',
          onPressed: widget.state.isLoading || !widget.state.isValid
              ? null
              : () {
                  widget.bloc.add(
                    PreGame2pEvent.createLobby(state: widget.state),
                  );
                },
        ),
      ],
    );
  }
}

class CreatedLobbyView extends PreGame2pBaseView<PreGame2pCreatedLobbyState> {
  const CreatedLobbyView({
    super.key,
    required super.state,
    required super.bloc,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final rowTitleTheme = textTheme.bodyLarge?.copyWith(
      color: Colors.grey.shade700,
    );
    final rowContentTheme = textTheme.bodyMedium?.copyWith(
      color: Colors.grey.shade700,
    );

    final player1Name = state.session.player1Name;
    final player2Name = state.session.player2Name;
    final hasP1Answer = state.session.player1Answer != null &&
        state.session.player1Answer!.isNotEmpty;

    return buildPaddedContent(
      children: [
        buildLobbyDetailsBlock(
          context,
          children: [
            buildGameLobbyHeader(
              context,
              title: 'Game settings',
            ),
            PDRow(
              title: 'Time',
              titleStyle: rowTitleTheme,
              content: Text(
                state.session.time.label,
                style: rowContentTheme,
              ),
            ),
            PDRow(
              title: 'Answer Type',
              titleStyle: rowTitleTheme,
              content: Text(
                state.session.answerType.label,
                style: rowContentTheme,
              ),
            ),
            const SizedBox(height: 8),
            const Divider(),
            Column(
              children: [
                Text(
                  'Room ID',
                  style: rowTitleTheme,
                ),
                Text(
                  state.session.id,
                  textAlign: TextAlign.center,
                  style: textTheme.displaySmall?.copyWith(),
                ),
                const SizedBox(height: 4),
                Text(
                  'Share this ID with a friend to join your game!',
                  style: textTheme.titleSmall?.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            buildGameLobbyHeader(
              context,
              title: 'Players in lobby',
            ),
            buildPlayerConnectionStation(
              context,
              name:
                  '${player1Name.isNotEmpty ? player1Name : "Player 1"} (You)',
              isConnected: true,
            ),
            const SizedBox(height: 4),
            buildPlayerConnectionStation(
              context,
              name: state.session.hasPlayer2Joined
                  ? (player2Name != null && player2Name.isNotEmpty
                      ? player2Name
                      : "Player 2")
                  : 'Waiting for player',
              isChoosingAnswer: !hasP1Answer,
              isConnected: state.session.hasPlayer2Joined,
            ),
          ],
        ),
        const Spacer(),
        buildSubmitButton(
          title: state.session.hasPlayer2Joined
              ? !hasP1Answer
                  ? 'Choosing answer...'
                  : 'Start Game'
              : 'Awaiting player...',
          onPressed: !state.session.hasPlayer2Joined || !hasP1Answer
              ? null
              : () {
                  bloc.add(
                    PreGame2pEvent.startGame(state: state),
                  );
                },
        ),
      ],
    );
  }
}

class NewJoinLobbyView extends StatefulWidget {
  const NewJoinLobbyView({
    super.key,
    required this.state,
    required this.bloc,
  });

  final PreGame2pBloc bloc;
  final PreGame2pNewJoinLobbyState state;

  @override
  State<NewJoinLobbyView> createState() => _NewJoinLobbyViewState();
}

class _NewJoinLobbyViewState extends State<NewJoinLobbyView>
    with PreGame2pMixin {
  TextEditingController roomIDController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    roomIDController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildPaddedContent(
      children: [
        buildTextField(
          context,
          title: 'Room ID',
          hint: 'ABCD',
          errorText: widget.state.textError,
          controller: roomIDController,
          maxLength: 4,
          textCapitalization: TextCapitalization.characters,
          onChanged: (newID) {
            widget.bloc.add(
              PreGame2pEvent.updateJoinLobby(
                roomID: newID,
                name: widget.state.name,
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        buildTextField(
          context,
          title: 'Name',
          hint: 'Player 2',
          controller: nameController,
          onChanged: (newName) {
            widget.bloc.add(
              PreGame2pEvent.updateJoinLobby(
                roomID: widget.state.joinRoomId,
                name: newName,
              ),
            );
          },
        ),
        const Spacer(),
        buildSubmitButton(
          title: !widget.state.isLoading ? 'Join room' : 'Connecting...',
          onPressed: widget.state.isLoading || !widget.state.isValid
              ? null
              : () {
                  widget.bloc.add(
                    PreGame2pEvent.joinLobby(
                      state: widget.state,
                    ),
                  );
                },
        ),
      ],
    );
  }
}

class JoinedLobbyView extends StatefulWidget {
  const JoinedLobbyView({
    super.key,
    required this.state,
    required this.bloc,
  });

  final PreGame2pBloc bloc;
  final PreGame2pJoinedLobbyState state;

  @override
  State<JoinedLobbyView> createState() => _JoinedLobbyViewState();
}

class _JoinedLobbyViewState extends State<JoinedLobbyView> with PreGame2pMixin {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final rowTitleTheme = textTheme.bodyLarge?.copyWith(
      color: Colors.grey.shade700,
    );
    final rowContentTheme = textTheme.bodyMedium?.copyWith(
      color: Colors.grey.shade700,
    );

    final session = widget.state.session;
    final customAnswer = widget.state.customAnswer;
    final player1Name = session.player1Name;
    final player2Name = session.player2Name;

    return buildPaddedContent(
      children: [
        if (session.isAwaitingPlayer2Data)
          buildTextField(
            context,
            title: 'Choose Answer',
            subtitle: 'This will be the answer for the other player to guess!',
            hint: 'WORDS',
            errorText: widget.state.errorText,
            controller: controller,
            maxLength: 5,
            textCapitalization: TextCapitalization.characters,
            onChanged: (newAnswer) {
              widget.bloc.add(
                PreGame2pEvent.updateJoinedLobby(answer: newAnswer),
              );
            },
          )
        else
          buildLobbyDetailsBlock(
            context,
            children: [
              buildGameLobbyHeader(
                context,
                title: 'Game settings',
              ),
              PDRow(
                title: 'Time',
                titleStyle: rowTitleTheme,
                content: Text(
                  widget.state.session.time.label,
                  style: rowContentTheme,
                ),
              ),
              PDRow(
                title: 'Answer Type',
                titleStyle: rowTitleTheme,
                content: Text(
                  widget.state.session.answerType.label,
                  style: rowContentTheme,
                ),
              ),
              const SizedBox(height: 4),
              Column(
                children: [
                  Text(
                    'Room ID',
                    style: rowTitleTheme,
                  ),
                  Text(
                    widget.state.session.id,
                    textAlign: TextAlign.center,
                    style: textTheme.displaySmall?.copyWith(),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              buildGameLobbyHeader(
                context,
                title: 'Players in lobby',
              ),
              buildPlayerConnectionStation(
                context,
                name: player1Name.isNotEmpty ? player1Name : "Player 1",
                isConnected: true,
              ),
              const SizedBox(height: 4),
              buildPlayerConnectionStation(
                context,
                name:
                    '${player2Name != null && player2Name.isNotEmpty ? player2Name : "Player 2"} (You)',
                isConnected: true,
              ),
            ],
          ),
        const Spacer(),
        buildSubmitButton(
          title: widget.state.session.player1Answer != null
              ? 'Waiting for host to start'
              : 'Submit Answer',
          onPressed: widget.state.session.player1Answer == null &&
                  (customAnswer != null && customAnswer.isValidAnswer)
              ? () {
                  widget.bloc.add(
                    PreGame2pEvent.submitCustomAnswer(
                      state: widget.state,
                      customAnswer: customAnswer,
                    ),
                  );
                }
              : null,
        ),
      ],
    );
  }

  // Widget _buildRemainingQuestions(BuildContext context) {
  //   return buildTextField(
  //     context,
  //     title: 'Answer',
  //     hint: 'ANGEL',
  //     maxLength: 5,
  //     textCapitalization: TextCapitalization.characters,
  //     // errorText: widget.state.errorText,
  //     controller: nameController,
  //     onChanged: (newAnswer) {
  //       // widget.bloc.add(
  //       //   PreGame2pEvent.updateCreateLobby(
  //       //     time: widget.state.time,
  //       //     name: widget.state.name,
  //       //     answer: newAnswer,
  //       //     answerType: widget.state.answerType,
  //       //   ),
  //       // );
  //     },
  //   );
  // }
}
