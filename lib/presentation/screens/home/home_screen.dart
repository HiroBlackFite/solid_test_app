import 'dart:math';

import 'package:flutter/material.dart';

import 'package:solid_test_app/core/core.dart';

///Home screen
class HomeScreen extends StatefulWidget {
  ///Home screen constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _rotationStep = 0.5;
  Color _color = const Color.fromRGBO(255, 255, 255, 1);
  double _turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: _randomChangeColor,
        child: AnimatedContainer(
          width: double.infinity,
          height: double.infinity,
          color: _color,
          duration: const Duration(milliseconds: 500),
          child: Center(
            child: AnimatedRotation(
              duration: const Duration(milliseconds: 500),
              turns: _turns,
              child: InkWell(
                onTap: _changeRotation,
                child: Text(
                  'Hello there',
                  style: context.textTheme.displayMedium,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _randomChangeColor() {
    final random = Random();

    final red = random.nextInt(255);
    final green = random.nextInt(255);
    final blue = random.nextInt(255);

    setState(() {
      _color = Color.fromRGBO(red, green, blue, 1);
    });
  }

  void _changeRotation() {
    setState(() {
      _turns += _rotationStep;
    });
  }
}
