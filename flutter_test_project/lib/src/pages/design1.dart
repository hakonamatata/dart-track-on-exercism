import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test_project/src/widgets/movingBox.dart';
import 'package:flutter_test_project/src/widgets/rotateBox.dart';

class DesignExample1 extends StatefulWidget {
  const DesignExample1({Key? key}) : super(key: key);

  static const routeName = '/example/1';

  @override
  State<StatefulWidget> createState() {
    return DesignExample1State();
  }
}

class DesignExample1State extends State<DesignExample1> {
  bool _small = true;

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

          const Positioned(
              top: 300,
              // bottom: 100,
              left: 100,
              // right: 100,
              width: 100,
              height: 100,
              child: RotateBox()),

          const Positioned(
              top: 500,
              // bottom: 100,
              left: 100,
              // right: 100,
              width: 100,
              height: 100,
              child: MovingBox()),

          AnimatedPositioned(
              top: 700,
              left: _small ? 100 : 500,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOut,
              child: Stack(children: <Widget>[
                AnimatedContainer(
                  color: Colors.blue,
                  height: _small ? 100 : 175,
                  width: _small ? 100 : 175,
                  duration: const Duration(milliseconds: 1000),
                  // curve: Curves.bounceInOut,
                ),
                Positioned(
                    child: ElevatedButton(
                      child: const Text('button'),
                      onPressed: () => setState(() {
                        _small = !_small;
                      }),
                    ),
                    bottom: 10,
                    left: 10),
              ])),

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
