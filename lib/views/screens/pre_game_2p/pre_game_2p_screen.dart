import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_vs/blocs/pre_game_2p/pre_game_2p_bloc.dart';
import 'package:wordle_vs/views/screens/pre_game_2p/pre_game_2p_mixin.dart';
import 'package:wordle_vs/views/screens/pre_game_2p/pre_game_2p_views.dart';
import 'package:wordle_vs/views/widgets/circular_button.dart';

class PreGame2pScreen extends StatelessWidget {
  const PreGame2pScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PreGame2pBloc(
        gameLobbyRepository: context.read(),
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

class _PreGame2pScreen extends StatelessWidget with PreGame2pMixin {
  const _PreGame2pScreen({
    required this.bloc,
  });

  final PreGame2pBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: BlocBuilder<PreGame2pBloc, PreGame2pState>(
        builder: (ctx, snap) {
          final state = snap;
          print('------- state.runtimeType:${state.runtimeType}');
          if (state is PreGame2pNewCreateLobbyState) {
            return NewCreateLobbyView(bloc: bloc, state: state);
          } else if (state is PreGame2pCreatedLobbyState) {
            return CreatedLobbyView(bloc: bloc, state: state);
          } else if (state is PreGame2pNewJoinLobbyState) {
            return _buildModeSelector();
          } else if (state is PreGame2pJoinedLobbyState) {
            return _buildModeSelector();
          } else {
            return _buildModeSelector();
          }
        },
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
