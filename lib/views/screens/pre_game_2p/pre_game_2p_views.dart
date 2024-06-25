import 'package:flutter/material.dart';
import 'package:wordle_vs/blocs/pre_game_2p/pre_game_2p_bloc.dart';
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
            PreGame2pChangeTimeEvent(
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
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                name: 'You',
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
        ),
        const Spacer(),
        buildSubmitButton(
          title: state.settings.hasPlayer2Joined
              ? 'Start Game'
              : 'Not ready to start',
          onPressed: !state.settings.hasPlayer2Joined
              ? null
              : () {
                  print('--- connect to game!');
                },
        ),
      ],
    );
  }
}
