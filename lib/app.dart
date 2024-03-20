import 'package:flutter/material.dart';

import 'package:solid_test_app/presentation/presentation.dart';

///Main widget
class App extends StatefulWidget {
  ///Main widget constructor
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
