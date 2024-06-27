import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_vs/blocs/pre_game_2p/pre_game_2p_bloc.dart';
import 'package:wordle_vs/utils/snackbar.dart';
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

class NewCreateLobbyView
    extends PreGame2pBaseView<PreGame2pNewCreateLobbyState> {
  const NewCreateLobbyView({
    super.key,
    required super.state,
    required super.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return buildPaddedContent(
      children: [
        buildTimeSelector(
          selectedTime: state.time,
          onChanged: (newTime) => bloc.add(
            PreGame2pEvent.updateTime(
              time: newTime,
            ),
          ),
        ),
        const Spacer(),
        buildSubmitButton(
          title: state.isLoading ? 'Creating game...' : 'Create Game',
          onPressed: state.isLoading
              ? null
              : () {
                  bloc.add(
                    PreGame2pEvent.createLobby(state: state),
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
                state.settings.time.label,
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
                  state.settings.id,
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
            const SizedBox(height: 32),
            buildGameLobbyHeader(
              context,
              title: 'Players in lobby',
            ),
            buildPlayerConnectionStation(
              context,
              name: 'Player 1 (You)',
              isConnected: true,
            ),
            const SizedBox(height: 4),
            buildPlayerConnectionStation(
              context,
              name: state.settings.hasPlayer2Joined
                  ? 'Player 2'
                  : 'Waiting for player',
              isConnected: state.settings.hasPlayer2Joined,
            ),
          ],
        ),
        const Spacer(),
        buildSubmitButton(
          title: state.settings.hasPlayer2Joined
              ? 'Start Game'
              : 'Not ready to start',
          onPressed: !state.settings.hasPlayer2Joined
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
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PreGame2pBloc, PreGame2pState>(
      bloc: widget.bloc,
      listenWhen: (stateA, stateB) {
        return stateA is PreGame2pNewJoinLobbyState &&
            stateB is PreGame2pNewJoinLobbyState &&
            stateA.error != stateB.error;
      },
      listener: (context, state) {
        if (state is PreGame2pNewJoinLobbyState && state.error != null) {
          // TODO: fix snackbar not showing
          topSnackbar('Error: ${state.error}');
        }
      },
      child: buildPaddedContent(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: buildLobbyDetailsBlock(
                  context,
                  children: [
                    TextField(
                      onChanged: (value) {
                        widget.bloc.add(
                          PreGame2pEvent.updateJoinRoomID(
                            roomID: value,
                          ),
                        );
                      },
                      autofocus: true,
                      showCursor: false,
                      decoration: InputDecoration(
                        hintText: 'Room ID',
                        errorText: widget.state.textError,
                        hintStyle:
                            Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Colors.black45,
                                ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        alignLabelWithHint: true,
                        isCollapsed: true,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                      maxLength: 4,
                      textCapitalization: TextCapitalization.characters,
                      keyboardType: TextInputType.text,
                      textAlignVertical: TextAlignVertical.center,
                      controller: controller,
                    ),
                  ],
                ),
              ),
            ],
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
      ),
    );
  }
}

class JoinedLobbyView extends PreGame2pBaseView<PreGame2pJoinedLobbyState> {
  const JoinedLobbyView({
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
                state.settings.time.label,
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
                  state.settings.id,
                  textAlign: TextAlign.center,
                  style: textTheme.displaySmall?.copyWith(),
                ),
              ],
            ),
            const SizedBox(height: 32),
            buildGameLobbyHeader(
              context,
              title: 'Players in lobby',
            ),
            buildPlayerConnectionStation(
              context,
              name: 'Player 1',
              isConnected: true,
            ),
            const SizedBox(height: 4),
            buildPlayerConnectionStation(
              context,
              name: 'Player 2 (You)',
              isConnected: true,
            ),
          ],
        ),
        const Spacer(),
        buildSubmitButton(
          title: 'Waiting for host to start',
          onPressed: null,
        ),
      ],
    );
  }
}
