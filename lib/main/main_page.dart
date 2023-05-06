import 'package:flutter/material.dart';

import 'main_button.dart';

class AppMainPage extends StatefulWidget {
  final String title;

  const AppMainPage({super.key, required this.title});

  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {

  Expanded _buildLeftColumn(int flex) {
    return Expanded(
      flex: flex,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () {},
                text: "001 - LOGIN PAGE",
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () {},
                text: "C H A P T E R - 002",
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                onPressed: () {},
                text: "C H A P T E R - 003",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('OK'),
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
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo !!!"),
      ),
      body: Center(
        child: Row(
          children: [
            _buildLeftColumn(1),
            _buildLeftColumn(2),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 400,
                color: Colors.amber,
                child: const Text("DUMMY"),
              )
            )
            ]
          )
      )
    );
  }
}
