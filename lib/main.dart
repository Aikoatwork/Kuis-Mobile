import 'package:flutter/material.dart';
import 'halaman_login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Kuis",
      home: HalamanLogin  (),
    );
  }
}