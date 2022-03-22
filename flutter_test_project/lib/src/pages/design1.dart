import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test_project/src/widgets/movingBox.dart';
import 'package:flutter_test_project/src/widgets/rotateBox.dart';

class DesignExample1 extends StatelessWidget {
  const DesignExample1({Key? key}) : super(key: key);

  static const routeName = '/example/1';

  // @override
  // State<DesignExample1> createState() => _DesignExample1State();

  // AnimationController _animationController = AnimationController(
  //   vsync: this,
  //   duration: const Duration(milliseconds: 1000),
  // );

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('design 1'),
      ),
      body: Stack(
        children: [
          // const Center(
          //   child: Text('design 1'),
          // ),

          Positioned(
            top: 100,
            // bottom: 100,
            left: 100,
            // right: 100,
            width: 100,
            height: 100,
            child: Transform.rotate(
              // origin: Offset(-50, -50),
              // angle: pi / _animationController.value,
              angle: pi / 3,
              child: Container(
                // transform: Matrix4.rotationZ(pi / 4),
                color: Colors.blue,
                height: 100,
              ),
            ),
          ),

          // Transform.rotate(
          //   origin: Offset(50, 50),
          //   angle: pi / 4,
          //   child: Container(
          //     color: Colors.amber,
          //     width: 100,
          //     height: 100,
          //   ),
          // ),

          Positioned(
              top: 300,
              // bottom: 100,
              left: 100,
              // right: 100,
              width: 100,
              height: 100,
              child: const RotateBox()),

          Positioned(
              top: 500,
              // bottom: 100,
              left: 100,
              // right: 100,
              width: 100,
              height: 100,
              child: const MovingBox()),

          // Transform(
          // transform: Matrix4.rotationX(0.3),
          // origin: Offset(0, 0),
          // ..setEntry(3, 2, 0.001),
          // ..rotateX(pi / 4),
          // ..rotateY(pi / 4)
          // ..rotateZ(pi / 4),
          // Container(
          //   color: Colors.red,
          //   height: 100,
          // ),

          // Positioned(
          //   top: 300,
          //   // bottom: 100,
          //   left: 100,
          //   // right: 100,
          //   width: 50,
          //   height: ,
          //   child: Container(
          //     color: Colors.blue,
          //     height: 100,
          //   ),
          // )),
        ],
      ),
    );
  }
}
