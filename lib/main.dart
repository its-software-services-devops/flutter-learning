import 'package:flutter/material.dart';
import 'main/main_page.dart';

void main () {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.purple,
          )),
      ),
      home: const AppMainPage(title: "Flutter Learning"),
    );
  }
}
