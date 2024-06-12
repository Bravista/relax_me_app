import 'package:flutter/material.dart';
import 'package:relax_me_app/src/data/database_repository.dart';
import 'package:relax_me_app/src/features/hauptmenu/presentation/hauptmenu.dart';

class LoginScreen extends StatefulWidget {
  final DatabaseRepository databaseRepository;
  const LoginScreen(this.databaseRepository, {super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Image.asset("assets/images/hauptlogo.png"),
                  const SizedBox(
                    height: 24,
                  ),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Emailadresse"),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Passwort"),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  )),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Hauptmenu(widget.databaseRepository)));
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        const Color(0xFFF0A770),
                      ),
                      minimumSize:
                          WidgetStateProperty.all<Size>(const Size(270, 43)),
                    ),
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
