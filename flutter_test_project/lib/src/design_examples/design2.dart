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
      body: const Center(
        child: Text('design 2'),
      ),
    );
  }
}
