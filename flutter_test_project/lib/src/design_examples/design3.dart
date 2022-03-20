import 'package:flutter/material.dart';

class DesignExample3 extends StatelessWidget {
  const DesignExample3({Key? key}) : super(key: key);

  static const routeName = '/example/3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('design 3'),
      ),
      body: const Center(
        child: Text('design 3'),
      ),
    );
  }
}
