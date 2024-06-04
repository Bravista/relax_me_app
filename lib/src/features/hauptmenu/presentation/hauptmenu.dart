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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset('assets/images/hintergrundlogo.png'),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mood Check"),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.access_alarm_outlined)
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Stress reduzieren"),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Icon(Icons.access_alarm_outlined),
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mit Community chatten"),
                  SizedBox(
                    width: 12,
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
                    width: 12,
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
