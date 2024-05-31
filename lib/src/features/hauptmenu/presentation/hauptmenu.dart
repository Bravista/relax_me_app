import 'package:flutter/material.dart';

class Hauptmenu extends StatelessWidget {
  const Hauptmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 173, 114),
                Color(0xFFE8E6DF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.mirror),
        ),
      ),
    );
  }
}
