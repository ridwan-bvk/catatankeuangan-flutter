import 'package:catatankeuangan/page/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      home: MainPage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
