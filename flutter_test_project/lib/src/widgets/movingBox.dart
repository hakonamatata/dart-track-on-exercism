import 'dart:math';
import 'package:flutter/material.dart';

class MovingBox extends StatefulWidget {
  const MovingBox({Key? key}) : super(key: key);

  static const routeName = '/example/4';

  @override
  MovingBoxState createState() => MovingBoxState();
}

class MovingBoxState extends State with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  int position = 1;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);

    _animationController.forward();
    // _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedBuilder(
          animation: _animation,
          child: Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          builder: (context, child) => Transform.translate(
                offset: Offset(400 * position * _animation.value as double, 0),
                child: child,
              )),
    ]);
  }
}
