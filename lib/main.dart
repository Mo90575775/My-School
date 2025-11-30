import 'package:flutter/material.dart';

import 'package:my_sc/pages/Menu.dart';

void main() {runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My School',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MenuPage(),
    );
  }
}
