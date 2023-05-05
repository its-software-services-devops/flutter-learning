import 'package:flutter/material.dart';

import 'main_button.dart';

class AppMainPage extends StatefulWidget {
  final String title;

  const AppMainPage({super.key, required this.title});

  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo !!!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () => {},
                text: "001 - LOGIN PAGE",
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () => {},
                text: "C H A P T E R - 002",
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () => {},
                text: "C H A P T E R - 003",
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () => {},
                text: "C H A P T E R - 004",
              ),
            ),
          ],
        )
      )
    );
  }
}
