import 'package:flutter/material.dart';
import 'package:relax_me_app/src/features/welcome/presentation/welcome_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
