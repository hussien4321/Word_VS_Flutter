import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:wordle_vs/blocs/pre_game_1p/pre_game_1p_cubit.dart';
import 'package:wordle_vs/model/game_data/wordlee_session.dart';
import 'package:wordle_vs/utils/functions.dart';
import 'package:wordle_vs/views/screens/game/game_screen_1p.dart';
import 'package:wordle_vs/views/widgets/pre_game_base_mixin.dart';

class PreGame1pScreen extends StatelessWidget {
  const PreGame1pScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PreGame1pCubit(
        gameSettingsRepository: context.read(),
      ),
      child: BlocBuilder<PreGame1pCubit, PreGame1pState>(
        builder: (ctx, _) {
          return _PreGame1pScreen(
            bloc: ctx.read<PreGame1pCubit>(),
          );
        },
      ),
    );
  }
}

class _PreGame1pScreen extends StatelessWidget with PreGameBaseMixin {
  const _PreGame1pScreen({
    required this.bloc,
  });

  final PreGame1pCubit bloc;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PreGame1pCubit, PreGame1pState>(
        listenWhen: (before, after) {
      return before is PreGame1pInitState && after is PreGame1pStartedState;
    }, listener: (BuildContext context, PreGame1pState state) {
      if (state is PreGame1pStartedState) {
        Get.off(
          () => GameScreen1p(
            session: WordleeSession1P(
              answer: generateRandomWord(),
              time: bloc.state.time,
            ),
          ),
        );
      }
    }, builder: (context, snapshot) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text('Game Options (1p)'),
          centerTitle: true,
        ),
        body: buildPaddedContent(
          children: [
            buildTimeSelector(
              selectedTime: bloc.state.time,
              onChanged: (time) {
                bloc.updateTime(time);
              },
            ),
            const Spacer(),
            buildSubmitButton(
              title: bloc.state is PreGame1pInitState
                  ? 'Start Game'
                  : 'Starting game...',
              onPressed: bloc.state is PreGame1pInitState
                  ? () {
                      bloc.startGame();
                    }
                  : null,
            ),
          ],
        ),
      );
    });
  }
}
