import 'dart:math';

import 'package:flutter/material.dart';

class DesignExample2 extends StatelessWidget {
  const DesignExample2({Key? key}) : super(key: key);

  static const routeName = '/example/2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('design 2'),
        ),
        body: Stack(children: <Widget>[
          Positioned(
              top: 100,
              left: 50,
              width: 400,
              height: 300,
              child: Transform.rotate(angle: pi / 4, child: Image.asset('assets/images/background.jpg')))
          // Positioned(
          //     bottom: 16,
          //     left: 16,
          //     child: Text('Some fancy place', style: TextStyle(color: Colors.white, fontSize: 24))),
        ]));
  }
}
