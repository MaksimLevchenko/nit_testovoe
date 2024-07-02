import 'package:flutter/material.dart';

import 'main_screen/home_screen_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenWidget(),
    );
  }
}
