import 'package:flutter/material.dart';

import 'main_button.dart';
import 'test_listview.dart';
import 'test_avata.dart';
import 'test_card.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [ 
                    TestAvata(),
                    TestCard()
                  ])),
            const Expanded(
              flex: 2,
              child: TestListview()),
            _buildLeftColumn(2),
            ]
          )
      )
    );
  }
}
