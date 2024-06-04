import 'package:flutter/material.dart';
import 'package:relax_me_app/src/features/diary/presentation/diary.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset('assets/images/hintergrundlogo.png'),
          const SizedBox(height: 175),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DiaryScreen()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mood Check"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_alarm_outlined)
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Relax Me"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.access_alarm_outlined),
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Community Chat"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_alarm_outlined)
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mind Supplements"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_alarm_outlined)
                ],
              )),
        ],
      ),
    )

        // Container(
        //   height: double.infinity,
        //   width: double.infinity,
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [
        //           Color.fromARGB(255, 255, 173, 114),
        //           Color(0xFFE8E6DF),
        //         ],
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         tileMode: TileMode.mirror),
        //   ),
        // ),

        );
  }
}
