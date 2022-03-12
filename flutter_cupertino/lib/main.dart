import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      // theme: CupertinoThemeData(
      //   primaryColor: CupertinoColors.activeBlue,
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Text(
        'Hello, World!',
        style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
      ),
    ));
  }
}
