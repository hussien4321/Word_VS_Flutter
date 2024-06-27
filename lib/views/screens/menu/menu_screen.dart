import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wordle_vs/utils/snackbar.dart';
import 'package:wordle_vs/views/screens/pre_game_1p/pre_game_1p_screen.dart';
import 'package:wordle_vs/views/screens/pre_game_2p/pre_game_2p_screen.dart';
import 'package:wordle_vs/views/widgets/circular_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Wordl VS'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: CircularButton(
              icon: const Icon(Icons.person),
              title: 'Practice Mode',
              subtitle: '1 Player',
              colors: [
                Colors.blue,
                Colors.blue.shade200,
              ],
              onTap: () {
                Get.to(
                  () => const PreGame1pScreen(),
                );
              },
            ),
          ),
          Expanded(
            child: CircularButton(
              icon: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Icon(Icons.person),
                ],
              ),
              title: 'VS Mode',
              subtitle: '2 Players',
              colors: const [
                Colors.deepOrange,
                Colors.orange,
              ],
              onTap: () {
                Get.to(
                  () => const PreGame2pScreen(),
                );
              },
            ),
          ),
          Expanded(
            child: CircularButton(
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
          ),
        ],
      ),
    );
  }
}
