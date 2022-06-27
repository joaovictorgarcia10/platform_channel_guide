import 'package:flutter/material.dart';
import 'package:platform_channel_guide/primeiro_exemplo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Platform Channel Guide',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: const PrimeiroExemplo(),
    );
  }
}
