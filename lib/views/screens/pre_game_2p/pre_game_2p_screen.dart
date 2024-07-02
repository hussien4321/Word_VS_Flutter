import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:wordle_vs/blocs/pre_game_2p/pre_game_2p_bloc.dart';
import 'package:wordle_vs/views/screens/game/game_screen_2p.dart';
import 'package:wordle_vs/views/screens/pre_game_2p/pre_game_2p_views.dart';
import 'package:wordle_vs/views/widgets/circular_button.dart';
import 'package:wordle_vs/views/widgets/info_dialog.dart';
import 'package:wordle_vs/views/widgets/pre_game_base_mixin.dart';
import 'package:wordle_vs/views/widgets/yes_no_dialog.dart';

class PreGame2pScreen extends StatelessWidget {
  const PreGame2pScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PreGame2pBloc(
        gameLobbyRepository: context.read(),
        gameSettingsRepository: context.read(),
      ),
      child: BlocBuilder<PreGame2pBloc, PreGame2pState>(
        builder: (ctx, _) {
          return _PreGame2pScreen(
            bloc: ctx.read<PreGame2pBloc>(),
          );
        },
      ),
    );
  }
}

class _PreGame2pScreen extends StatelessWidget with PreGameBaseMixin {
  const _PreGame2pScreen({
    required this.bloc,
  });

  final PreGame2pBloc bloc;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: (bloc.state is PreGame2pInitState),
      onPopInvoked: (canPop) {
        FocusScope.of(context).unfocus();
        if (!canPop) {
          if (bloc.state is PreGame2pNewJoinLobbyState ||
              bloc.state is PreGame2pNewCreateLobbyState) {
            bloc.add(PreGame2pEvent.popToStart());
          } else if (bloc.state is PreGame2pCreatedLobbyState ||
              bloc.state is PreGame2pJoinedLobbyState) {
            showYesNoDialog(
              context,
              title: 'Disconnect',
              message: 'Are you sure you want to leave this lobby?',
              onYes: () {
                bloc.add(PreGame2pEvent.disconnect());
              },
            );
            // if yes
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            bloc.state.map(
              init: (_) => 'Select Mode',
              newCreateLobby: (_) => 'Create Game',
              createdLobby: (_) => 'Create Game',
              newJoinLobby: (_) => 'Join Game',
              joinedLobby: (_) => 'Join Game',
            ),
          ),
          centerTitle: true,
        ),
        body: BlocListener<PreGame2pBloc, PreGame2pState>(
          listenWhen: (before, after) {
            return after is PreGame2pInitState;
          },
          listener: (BuildContext context, PreGame2pState state) {
            if (state is PreGame2pInitState) {
              if (state.hasError) {
                showInfoDialog(
                  context,
                  title: 'Error',
                  message:
                      'Unexpected error detected. Please check your internet connection and try again.',
                );
              }
            }
          },
          child: BlocConsumer<PreGame2pBloc, PreGame2pState>(
            listenWhen: (before, after) {
              if (before is PreGame2pJoinedLobbyState &&
                  after is PreGame2pJoinedLobbyState) {
                return !before.session.hasStarted && after.session.hasStarted;
              } else if (before is PreGame2pCreatedLobbyState &&
                  after is PreGame2pCreatedLobbyState) {
                return !before.session.hasStarted && after.session.hasStarted;
              }
              return false;
            },
            listener: (BuildContext context, PreGame2pState state) {
              final session = state.mapOrNull(
                createdLobby: (lobby) => lobby.session,
                joinedLobby: (lobby) => lobby.session,
              );
              if (session != null && session.hasStarted) {
                Get.off(
                  () => GameScreen2p(session: session),
                );
              }
            },
            builder: (ctx, snap) {
              final state = snap;
              if (state is PreGame2pNewCreateLobbyState) {
                return NewCreateLobbyView(bloc: bloc, state: state);
              } else if (state is PreGame2pCreatedLobbyState) {
                return CreatedLobbyView(bloc: bloc, state: state);
              } else if (state is PreGame2pNewJoinLobbyState) {
                return NewJoinLobbyView(bloc: bloc, state: state);
              } else if (state is PreGame2pJoinedLobbyState) {
                return JoinedLobbyView(bloc: bloc, state: state);
              } else {
                return _buildModeSelector();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildModeSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CircularButton(
              icon: const Icon(Icons.login_sharp),
              title: 'Create Game',
              colors: [
                Colors.green.shade300,
                Colors.green,
              ],
              onTap: () {
                bloc.add(
                  PreGame2pEvent.selectMode(isCreating: true),
                );
              },
            ),
          ),
          Expanded(
            child: CircularButton(
              icon: const Icon(Icons.add_reaction),
              title: 'Join Game',
              colors: [
                Colors.purple.shade300,
                Colors.purple,
              ],
              onTap: () {
                bloc.add(
                  PreGame2pEvent.selectMode(isCreating: false),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
