import 'package:flutter/material.dart';
import 'package:relax_me_app/src/data/mock_database.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  MockDatabase db = MockDatabase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: db.getAllDailyEntries(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                child: const Text("data"),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return Container(
                child: const Text("keine Daten"),
              );
            }
          },
        ));
  }
}
