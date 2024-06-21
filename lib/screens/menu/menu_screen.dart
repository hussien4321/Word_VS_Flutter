import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wordle_vs/screens/game/game_screen.dart';
import 'package:wordle_vs/screens/menu/results_dialog.dart';
import 'package:wordle_vs/utils/snackbar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  _showTestPopUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.white,
          child: ResultsDialog(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wordl VS'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildSectionButton(
            context,
            icon: const Icon(Icons.person),
            title: 'Practice Mode',
            subtitle: '1 Player',
            colors: [
              Colors.blue,
              Colors.blue.shade200,
            ],
            onTap: () {
              Get.to(
                () => GameScreen(
                  answer: 'AUDIO',
                  duration: const Duration(minutes: 1),
                ),
              );
            },
          ),
          _buildSectionButton(
            context,
            icon: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                Icon(Icons.person),
              ],
            ),
            title: 'VS Mode',
            subtitle: '2 Players',
            colors: [
              Colors.deepOrange,
              Colors.orange,
            ],
            onTap: () {
              _showTestPopUp(context);
              // quickSnackbar(
              //   "In progress",'

              //   "Come back later",
              // );
            },
          ),
          _buildSectionButton(
            context,
            icon: const Icon(Icons.settings),
            title: 'Settings',
            colors: [
              Colors.grey.shade700,
              Colors.grey,
            ],
            onTap: () {
              quickSnackbar(
                "In progress",
                "Come back later",
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionButton(
    context, {
    required Widget icon,
    required String title,
    required List<Color> colors,
    required VoidCallback onTap,
    String? subtitle,
  }) {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: onTap,
                child: Ink(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: colors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon,
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white),
                      ),
                      if (subtitle != null)
                        Text(
                          subtitle,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.grey.shade100),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
