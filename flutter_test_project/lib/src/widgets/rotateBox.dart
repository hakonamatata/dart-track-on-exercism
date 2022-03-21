import 'dart:math';

import 'package:flutter/material.dart';

class RotateBox extends StatefulWidget {
  const RotateBox({Key? key}) : super(key: key);

  static const routeName = '/example/4';

  @override
  RotateBoxState createState() => RotateBoxState();
}

class RotateBoxState extends State with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.forward();
    // _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedBuilder(
          animation: _animationController,
          child: Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          builder: (context, child) => Transform.rotate(angle: _animationController.value * pi, child: child))
    ]);
  }
}
