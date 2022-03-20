import 'package:flutter/material.dart';

class DesignExample1 extends StatelessWidget {
  const DesignExample1({Key? key}) : super(key: key);

  static const routeName = '/example/1';

  // TODO: add transform and animate

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
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
